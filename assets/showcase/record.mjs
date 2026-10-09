// Records sections of the portfolio as JPEG frames, driving headless Chrome over CDP.
// Serve the portfolio build first (e.g. `npx vite preview --port 4321` or `python3 -m http.server 4321` in dist/).
//   node rec.mjs scroll <outDir> <startY> <endY> <frames>
//   node rec.mjs doodle <outDir>
import { spawn } from 'node:child_process';
import { mkdirSync, mkdtempSync, writeFileSync } from 'node:fs';

const [, , mode, outDir, ...rest] = process.argv;
const W = 1280, H = 800;
mkdirSync(outDir, { recursive: true });
const chrome = spawn('/Applications/Google Chrome.app/Contents/MacOS/Google Chrome',
  ['--headless=new', '--remote-debugging-port=9335', `--window-size=${W},${H}`, '--hide-scrollbars',
   '--enable-unsafe-swiftshader', `--user-data-dir=${mkdtempSync('/private/tmp/claude-501/cdp-')}`, 'about:blank'],
  { stdio: 'ignore' });
const sleep = ms => new Promise(r => setTimeout(r, ms));
let ws;
for (let i = 0; i < 60; i++) {
  try { const t = await (await fetch('http://127.0.0.1:9335/json')).json(); const p = t.find(x => x.type === 'page'); if (p) { ws = new WebSocket(p.webSocketDebuggerUrl); break; } } catch {}
  await sleep(250);
}
await new Promise(r => (ws.onopen = r));
let id = 0; const pend = new Map();
ws.onmessage = m => { const d = JSON.parse(m.data); if (d.id && pend.has(d.id)) { pend.get(d.id)(d.result ?? d.error); pend.delete(d.id); } };
const send = (method, params = {}) => new Promise(r => { const i = ++id; pend.set(i, r); ws.send(JSON.stringify({ id: i, method, params })); });
const evalJS = async expr => (await send('Runtime.evaluate', { expression: expr, returnByValue: true, awaitPromise: true })).result?.value;

await send('Emulation.setDeviceMetricsOverride', { width: W, height: H, deviceScaleFactor: 1, mobile: false });
await send('Page.navigate', { url: '' + (process.env.PORTFOLIO_URL || 'http://localhost:4321/') + '' });
await sleep(6500);

// THEME=dark: the portfolio has no dark mode, so record it under the brand's ink palette — the
// tokens swapped, and (FIXWHITE=1, for sections with no device mockups) any white card darkened
// just before each frame. Mockups keep their real, light screens.
const DARK_CSS = ':root{--color-surface:#161513;--color-surface-muted:#1e1d1a;--color-ink:#faf9f7;' +
  '--color-ink-muted:#9a968e;--color-border:#34322e;--color-rust:#d2733f}html,body{background:#161513!important}';
const FIX_WHITE = `for (const el of document.body.querySelectorAll('*')) {
  if (el.tagName === 'CANVAS' || el.closest('svg')) continue;
  const m = getComputedStyle(el).backgroundColor.match(/rgba?\\((\\d+), (\\d+), (\\d+)(?:, ([\\d.]+))?/);
  if (m && +m[1] > 226 && +m[2] > 226 && +m[3] > 226 && (m[4] === undefined || +m[4] > 0.5))
    // Cards go dark; buttons stay light and take dark text, so they still read as buttons.
    if (el.closest('button')) el.style.setProperty('color', '#161513', 'important');
    else el.style.setProperty('background-color', '#1e1d1a', 'important');
}`;
const dark = process.env.THEME === 'dark';
if (dark) await evalJS(`document.head.insertAdjacentHTML('beforeend', ${JSON.stringify(`<style>${DARK_CSS}</style>`)})`);

let n = 0;
const shot = async () => {
  if (dark && process.env.FIXWHITE) await evalJS(FIX_WHITE);
  const r = await send('Page.captureScreenshot', { format: 'jpeg', quality: 90 });
  writeFileSync(`${outDir}/f${String(n++).padStart(4, '0')}.jpg`, Buffer.from(r.data, 'base64'));
};
const scrollTo = async y => { await evalJS(`window.scrollTo(0, ${y}); new Promise(r => requestAnimationFrame(() => requestAnimationFrame(r)))`); };

if (mode === 'scroll') {
  const [y0, y1, frames] = rest.map(Number);
  // Arrive a little early so the section's pin and Lenis have settled before the first frame.
  await scrollTo(y0 - 400); await sleep(800); await scrollTo(y0); await sleep(800);
  for (let i = 0; i < frames; i++) {
    await scrollTo(Math.round(y0 + (y1 - y0) * i / (frames - 1)));
    await sleep(70);
    await shot();
  }
  // Hold the last frame a beat.
  for (let i = 0; i < 10; i++) { await sleep(60); await shot(); }
}

if (mode === 'doodle') {
  const [gameY] = rest.map(Number);
  await scrollTo(gameY - 600); await sleep(800); await scrollTo(gameY); await sleep(2500);
  // Shapes in the canvas's unit square; each is a list of strokes, each stroke a list of points.
  const circle = (cx, cy, r, from = 0, to = 2 * Math.PI, steps = 28) =>
    Array.from({ length: steps + 1 }, (_, k) => { const a = from + (to - from) * k / steps; return [cx + r * Math.cos(a), cy + r * Math.sin(a)]; });
  const SHAPES = {
    sun: [circle(.5, .5, .17), ...Array.from({ length: 8 }, (_, k) => { const a = k * Math.PI / 4; return [[.5 + .25 * Math.cos(a), .5 + .25 * Math.sin(a)], [.5 + .38 * Math.cos(a), .5 + .38 * Math.sin(a)]]; })],
    house: [[[.25, .5], [.25, .85], [.75, .85], [.75, .5], [.25, .5]], [[.18, .52], [.5, .18], [.82, .52]], [[.44, .85], [.44, .66], [.56, .66], [.56, .85]]],
    star: [[[.5, .12], [.6, .4], [.88, .4], [.65, .58], [.74, .86], [.5, .69], [.26, .86], [.35, .58], [.12, .4], [.4, .4], [.5, .12]]],
    envelope: [[[.15, .28], [.85, .28], [.85, .74], [.15, .74], [.15, .28]], [[.15, .28], [.5, .55], [.85, .28]]],
    ladder: [[[.32, .1], [.32, .9]], [[.68, .1], [.68, .9]], ...[.2, .36, .52, .68, .84].map(y => [[.32, y], [.68, y]])],
    donut: [circle(.5, .5, .32), circle(.5, .5, .12)],
    lollipop: [circle(.5, .33, .2), [[.5, .53], [.5, .92]]],
    mountain: [[[.08, .8], [.32, .35], [.48, .58], [.66, .25], [.92, .8], [.08, .8]]],
    clock: [circle(.5, .5, .34), [[.5, .5], [.5, .26]], [[.5, .5], [.67, .58]]],
    diamond: [[[.3, .3], [.7, .3], [.86, .44], [.5, .86], [.14, .44], [.3, .3]], [[.14, .44], [.86, .44]]],
    tent: [[[.12, .82], [.5, .2], [.88, .82], [.12, .82]], [[.5, .2], [.42, .82]], [[.5, .2], [.58, .82]]],
    umbrella: [[...circle(.5, .5, .36, Math.PI, 2 * Math.PI)], [[.14, .5], [.86, .5]], [[.5, .5], [.5, .84], ...circle(.44, .84, .06, 0, Math.PI, 8)]],
  };
  const info = async () => evalJS(`(() => { const c = document.querySelector('canvas[aria-label^="Drawing canvas"]'); if (!c) return null; c.scrollIntoView({block: 'center'}); const b = c.getBoundingClientRect(); return { word: c.getAttribute('aria-label').match(/Draw an? (.+)\\./)[1], x: b.left, y: b.top, w: b.width, h: b.height }; })()`);
  let c = await info();
  for (let tries = 0; c && !SHAPES[c.word.replace(' ', '_')] && tries < 40; tries++) {
    await evalJS(`[...document.querySelectorAll('button')].find(b => /new word/i.test(b.textContent))?.click()`);
    await sleep(300);
    c = await info();
  }
  await sleep(1200);
  if (!c) { console.log('no canvas'); process.exit(1); }
  const shape = SHAPES[c.word.replace(' ', '_')];
  console.log('drawing', c.word);
  for (let i = 0; i < 6; i++) { await sleep(80); await shot(); }
  const pad = 0.12;
  const map = ([u, v]) => ({ x: c.x + c.w * (pad + u * (1 - 2 * pad)), y: c.y + c.h * (pad + v * (1 - 2 * pad)) });
  let moves = 0;
  for (const stroke of shape) {
    const pts = [];
    for (let k = 0; k < stroke.length - 1; k++) {
      const a = stroke[k], b = stroke[k + 1];
      const steps = Math.max(2, Math.round(Math.hypot(b[0] - a[0], b[1] - a[1]) * 30));
      for (let s = 0; s < steps; s++) pts.push([a[0] + (b[0] - a[0]) * s / steps, a[1] + (b[1] - a[1]) * s / steps]);
    }
    pts.push(stroke.at(-1));
    const p0 = map(pts[0]);
    await send('Input.dispatchMouseEvent', { type: 'mouseMoved', ...p0 });
    await send('Input.dispatchMouseEvent', { type: 'mousePressed', ...p0, button: 'left', buttons: 1, clickCount: 1 });
    for (const pt of pts.slice(1)) {
      await send('Input.dispatchMouseEvent', { type: 'mouseMoved', ...map(pt), button: 'left', buttons: 1 });
      await sleep(16);
      if (++moves % 3 === 0) await shot();
    }
    await send('Input.dispatchMouseEvent', { type: 'mouseReleased', ...map(pts.at(-1)), button: 'left', buttons: 0, clickCount: 1 });
    for (let i = 0; i < 4; i++) { await sleep(90); await shot(); }
  }
  for (let i = 0; i < 28; i++) { await sleep(110); await shot(); }
  console.log(await evalJS(`document.querySelector('canvas[aria-label^="Drawing canvas"]')?.closest('section')?.innerText.slice(0, 300)`));
}
console.log('frames', n);
ws.close(); chrome.kill();
