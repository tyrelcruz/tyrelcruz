#!/usr/bin/env python3
"""
Builds the pages used in README.md, in the portfolio's design (devtyrelcruz.vercel.app):
paper, ink and rust; Garamond Condensed headlines, Inter text, IBM Plex Mono labels.

    pip install fonttools
    python3 assets/build.py

Every line of type is converted to outlines, the same way the brand marks are, so the pages
render identically everywhere and no font file ships with this repo. Inter and IBM Plex Mono
(SIL Open Font Licence) are downloaded to assets/.cache on the first run. Garamond Condensed
is read from the portfolio project; point GARAMOND_TTF at it if the project lives elsewhere.
Banner images are resized with macOS `sips`.
"""
import base64
import html
import os
import re
import subprocess
import tempfile
import urllib.request

from fontTools.pens.svgPathPen import SVGPathPen
from fontTools.ttLib import TTFont

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "assets")
CACHE = os.path.join(OUT, ".cache")
GARAMOND = os.environ.get("GARAMOND_TTF", os.path.join(
    os.path.dirname(ROOT), "PortfolioV2", "frontend", "src", "assets", "fonts",
    "Garamond Condensed Light Regular", "Garamond Condensed Light Regular.ttf"))

PORTFOLIO = "https://devtyrelcruz.vercel.app"
EMAIL = "tyrelcruz90@gmail.com"

# Light: the portfolio's tokens from index.css. Dark: the ink card from its How It Works deck
# (rust carried up in lightness so it still reads). The mark follows the brand README: on dark,
# the quote turns Paper and the cursor stays Rust.
THEMES = {
    "light": dict(PAPER="#faf9f7", INK="#101214", MUTED="#646972", FAINT="#a3a6ac", RUST="#a54a28",
                  BORDER="#dfdcd6", HAIR="#e9e6e0", CARD="#ffffff", MARK_INK="#25262b", MARK_RUST="#a5502e",
                  SLASH="#b9bbc0", TRACK="#ebe8e3"),
    "dark": dict(PAPER="#161513", INK="#faf9f7", MUTED="#9a968e", FAINT="#6b6862", RUST="#d2733f",
                 BORDER="#34322e", HAIR="#2a2825", CARD="#1e1d1a", MARK_INK="#faf9f7", MARK_RUST="#a5502e",
                 SLASH="#57544e", TRACK="#2e2c28"),
}


def set_theme(name):
    globals().update(THEMES[name])


set_theme("light")


# ---------------------------------------------------------------- fonts → outlines

GOOGLE_CSS = ("https://fonts.googleapis.com/css2?family=IBM+Plex+Mono:ital,wght@0,400;0,500;1,400"
              "&family=Inter:wght@400;500;600&display=swap")


def fetch_open_fonts():
    os.makedirs(CACHE, exist_ok=True)
    wanted = {f"{n}.ttf" for n in ("IBMPlexMono-400", "IBMPlexMono-400i", "IBMPlexMono-500",
                                   "Inter-400", "Inter-500", "Inter-600")}
    if wanted <= set(os.listdir(CACHE)):
        return
    req = urllib.request.Request(GOOGLE_CSS, headers={"User-Agent": "curl/8"})  # old UA → TTF
    css = urllib.request.urlopen(req).read().decode()
    pattern = r"font-family: '([^']+)';\s*font-style: (\w+);\s*font-weight: (\d+);.*?url\((\S+?)\)"
    for fam, style, weight, url in re.findall(pattern, css, re.S):
        name = f"{fam.replace(' ', '')}-{weight}{'i' if style == 'italic' else ''}.ttf"
        urllib.request.urlretrieve(url, os.path.join(CACHE, name))


class Font:
    _n = 0

    def __init__(self, path, fallback=None, avoid=""):
        Font._n += 1
        self.key = f"f{Font._n}"
        self.tt = TTFont(path)
        self.upm = self.tt["head"].unitsPerEm
        self.cmap = self.tt.getBestCmap()
        self.glyphs = self.tt.getGlyphSet()
        self.hmtx = self.tt["hmtx"]
        self.fallback = fallback
        self.avoid = avoid  # characters this face has but draws badly; taken from the fallback instead
        self.kern = {}
        if "kern" in self.tt:
            for table in self.tt["kern"].kernTables:
                self.kern.update(getattr(table, "kernTable", {}))

    def resolve(self, ch):
        if (ord(ch) in self.cmap and ch not in self.avoid) or not self.fallback:
            return self, self.cmap.get(ord(ch), ".notdef")
        return self.fallback.resolve(ch)

    def advance(self, gname):
        return self.hmtx[gname][0]


def layout(text, font, size, ls=0.0):
    """Places each glyph. Returns ([(font, glyph, x)], width)."""
    out, x, prev = [], 0.0, None
    for ch in text:
        f, g = font.resolve(ch)
        if prev and prev[0] is f:
            x += f.kern.get((prev[1], g), 0) * size / f.upm
        out.append((f, g, x))
        x += f.advance(g) * size / f.upm + ls
        prev = (f, g)
    return out, (x - ls if text else 0.0)


class Page:
    """One SVG document; collects the glyph outlines its text uses."""

    def __init__(self, w, h=0):
        self.w, self.h = w, h
        self.glyph_defs = {}
        self.defs, self.css, self.body = [], [], []

    def gid(self, f, g):
        key = f"{f.key}-{re.sub(r'[^A-Za-z0-9]', '_', g)}"
        if key not in self.glyph_defs:
            pen = SVGPathPen(f.glyphs)
            f.glyphs[g].draw(pen)
            self.glyph_defs[key] = pen.getCommands()
        return key

    def text(self, x, y, s, font, size, fill, anchor="start", ls=0.0, cls="", char_cls=None, extra=""):
        """Draws a run of text as outlines. Returns its width."""
        glyphs, w = layout(s, font, size, ls)
        x0 = x - (w / 2 if anchor == "middle" else w if anchor == "end" else 0)
        parts = []
        for i, (f, g, gx) in enumerate(glyphs):
            if s[i] == " ":
                continue
            k = size / f.upm
            use = (f'<use href="#{self.gid(f, g)}" transform="translate({x0 + gx:.2f} {y:.2f}) '
                   f'scale({k:.5f} {-k:.5f})"/>')
            parts.append(f'<g class="{char_cls(i)}">{use}</g>' if char_cls else use)
        c = f' class="{cls}"' if cls else ""
        self.body.append(f'<g fill="{fill}"{c} {extra}>{"".join(parts)}</g>')
        return w

    def runs(self, x, y, parts, anchor="start", cls=""):
        """Several styled runs on one line: parts = [(text, font, size, fill, ls)]."""
        widths = [layout(t, f, s, ls)[1] for t, f, s, _, ls in parts]
        total = sum(widths)
        cx = x - (total / 2 if anchor == "middle" else total if anchor == "end" else 0)
        spans = []
        for (t, f, s, fill, ls), w in zip(parts, widths):
            spans.append((cx, w))
            self.text(cx, y, t, f, s, fill, ls=ls, cls=cls)
            cx += w
        return total, spans

    def add(self, svg):
        self.body.append(svg)

    def render(self, title):
        glyphs = "".join(f'<path id="{k}" d="{d}"/>' for k, d in self.glyph_defs.items())
        css = "".join(self.css)
        return (f'<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" '
                f'width="{self.w}" height="{self.h:.0f}" viewBox="0 0 {self.w} {self.h:.0f}" role="img" '
                f'aria-label="{html.escape(title)}"><title>{html.escape(title)}</title>'
                f'<defs>{glyphs}{"".join(self.defs)}<style>{css}</style></defs>{"".join(self.body)}</svg>')


def wrap(s, font, size, maxw, ls=0.0):
    lines, cur = [], ""
    for word in s.split():
        trial = f"{cur} {word}".strip()
        if cur and layout(trial, font, size, ls)[1] > maxw:
            lines.append(cur)
            cur = word
        else:
            cur = trial
    return lines + ([cur] if cur else [])


def width(s, font, size, ls=0.0):
    return layout(s, font, size, ls)[1]


# ---------------------------------------------------------------- images

_img = {}


def jpeg_uri(path, w):
    key = (path, w)
    if key not in _img:
        with tempfile.TemporaryDirectory() as d:
            out = os.path.join(d, "o.jpg")
            subprocess.run(["sips", "-s", "format", "jpeg", "-s", "formatOptions", "70", "--resampleWidth",
                            str(w), os.path.join(ROOT, path), "--out", out], check=True, capture_output=True)
            with open(out, "rb") as f:
                _img[key] = "data:image/jpeg;base64," + base64.b64encode(f.read()).decode()
    return _img[key]


def file_uri(path):
    with open(os.path.join(ROOT, path), "rb") as f:
        return "data:image/jpeg;base64," + base64.b64encode(f.read()).decode()




# ---------------------------------------------------------------- shared pieces

W = 1000

LOGO_PATH = ("M85.14 59.25Q63.9 69.62 54.87 81.05Q45.84 92.49 45.84 106.25Q45.84 114.47 50.66 119.97Q55.47 "
             "125.47 61.79 129Q68.11 132.53 72.93 134.7Q77.75 136.87 77.75 138.42Q77.75 151.53 69.1 160.2Q60.46 "
             "168.86 46.79 168.86Q31.82 168.86 22.25 159.01Q12.69 149.17 12.69 130.59Q12.69 115.37 19.93 "
             "101.31Q27.18 87.25 42.29 74.78Q57.41 62.31 80.8 52.12ZM167.96 59.25Q146.72 69.62 137.69 "
             "81.05Q128.66 92.49 128.66 106.25Q128.66 114.47 133.47 119.97Q138.29 125.47 144.61 129Q150.93 "
             "132.53 155.75 134.7Q160.56 136.87 160.56 138.42Q160.56 151.53 151.92 160.2Q143.28 168.86 129.6 "
             "168.86Q114.64 168.86 105.07 159.01Q95.5 149.17 95.5 130.59Q95.5 115.37 102.75 101.31Q110 87.25 "
             "125.11 74.78Q140.22 62.31 163.62 52.12Z")

FADE_CSS = ("@keyframes rise{from{opacity:0;transform:translateY(18px)}to{opacity:1;transform:none}}"
            ".rise{animation:rise .8s cubic-bezier(.2,.7,.2,1) backwards}"
            "@keyframes blink{0%,49%{opacity:1}50%,100%{opacity:0}}.blink{animation:blink 1s step-end infinite}"
            "@keyframes grow{from{transform:scaleX(0)}}"
            ".grow{transform-box:fill-box;transform-origin:left;animation:grow 1.4s cubic-bezier(.2,.7,.2,1) .3s backwards}")


def sheet(page, h, w=W, rounded=True):
    page.h = h
    r = 22 if rounded else 0
    page.body.insert(0, f'<rect x="0.5" y="0.5" width="{w - 1}" height="{h - 1}" rx="{r}" fill="{PAPER}" '
                        f'stroke="{HAIR if rounded else PAPER}"/>')
    page.defs.append(f'<clipPath id="sheet"><rect width="{w}" height="{h}" rx="{r}"/></clipPath>')


def logo(page, x, y, height=18):
    k = height / 145.93
    page.add(f'<g transform="translate({x} {y}) scale({k:.4f}) translate(-12.69 -52.12)">'
             f'<path fill="{MARK_INK}" d="{LOGO_PATH}"/><path fill="{MARK_RUST}" d="M189.7 52.12H243.31V198.05H189.7Z"/></g>')
    return 230.62 * k


def navbar(page, label, progress):
    """The portfolio's top bar — mark, name and the section label — without the calls to hire."""
    lw = logo(page, 36, 31)
    page.text(36 + lw + 9, 46, "Tyrel Cruz", SERIF, 23, INK)
    if label:
        page.text(W / 2, 45, label, MONO_M, 12, MUTED, "middle", ls=2.6)
    page.text(W - 36, 45, "github.com/tyrelcruz", MONO, 12, FAINT, "end")
    if progress:
        page.add(f'<g clip-path="url(#sheet)"><rect class="grow" width="{W * progress:.0f}" height="2.5" fill="{RUST}"/></g>')


def tags(page, x, y, items, maxw, round_=True, size=11.5, h=28, gap=8, anchor="start"):
    widths = [width(it, MONO, size) + (28 if round_ else 18) for it in items]
    rows, row, rw = [], [], 0
    for it, tw in zip(items, widths):
        if row and rw + tw > maxw:
            rows.append((row, rw - gap))
            row, rw = [], 0
        row.append((it, tw))
        rw += tw + gap
    rows.append((row, rw - gap))
    for r, (row, total) in enumerate(rows):
        cx = x - (total / 2 if anchor == "middle" else 0)
        cy = y + r * (h + gap)
        for it, tw in row:
            rad = h / 2 if round_ else 3
            page.add(f'<rect x="{cx:.1f}" y="{cy:.1f}" width="{tw:.1f}" height="{h}" rx="{rad}" fill="none" stroke="{BORDER}"/>')
            page.text(cx + tw / 2, cy + h / 2 + size * 0.36, it, MONO, size, MUTED, "middle")
            cx += tw + gap
    return len(rows) * (h + gap) - gap


def paragraph(page, x, y, s, font, size, fill, maxw, lh, anchor="start"):
    lines = wrap(s, font, size, maxw)
    for i, line in enumerate(lines):
        page.text(x, y + i * lh, line, font, size, fill, anchor)
    return len(lines) * lh


def write(name, svg):
    with open(os.path.join(OUT, name), "w", encoding="utf-8") as f:
        f.write(svg)


# ---------------------------------------------------------------- hero

def hero():
    p = Page(W)
    p.css.append(FADE_CSS + ".d1{animation-delay:.06s}.d2{animation-delay:.16s}.d3{animation-delay:.26s}")
    navbar(p, None, 1 / 7)
    p.text(W / 2, 236, "What you put into words,", SERIF, 84, INK, "middle", cls="rise d1")
    _, spans = p.runs(W / 2 - 9, 308, [("// ", MONO_I, 27, SLASH, 0),
                                       ("I put into code.", MONO_I, 27, MUTED, 0)], "middle", cls="rise d2")
    end = spans[-1][0] + spans[-1][1]
    p.add(f'<g class="rise d2"><rect class="blink" x="{end + 8:.1f}" y="284" width="10" height="27" fill="{RUST}"/></g>')
    for i, line in enumerate(["Full-Stack Software Engineer at MEC Networks. Web, mobile and AI systems,",
                              "from the database to the device — and now and then the circuit board."]):
        p.text(W / 2, 378 + i * 27, line, SANS, 17, MUTED, "middle", cls="rise d3")
    sheet(p, 470)
    return p.render("What you put into words, // I put into code. Tyrel Cruz, Full-Stack Software Engineer.")


def pill(label):
    size, h = 13.5, 44
    w = width(label, MONO, size) + 52
    p = Page(round(w))
    p.add(f'<rect x="0.5" y="0.5" width="{w - 1:.0f}" height="{h - 1}" rx="{(h - 1) / 2}" fill="{PAPER}" stroke="{BORDER}"/>')
    p.text(w / 2, h / 2 + 4.8, label, MONO, size, MUTED, "middle")
    p.h = h
    return p.render(label)


# ---------------------------------------------------------------- about

def about():
    p = Page(W)
    p.css.append(FADE_CSS)
    navbar(p, "01 · ABOUT", 2 / 7)
    x, cw = 110, 780
    p.add(f'<circle cx="{x - 30}" cy="142" r="5" fill="{RUST}"/>')
    p.text(x, 151, "Full-Stack Software Engineer", SERIF, 34, INK)
    p.text(x, 182, "MEC Networks Corporation  ·  Nov 2025 — Present", MONO, 13, MUTED)
    for i, (v, label) in enumerate([("70%", "less manual deployment effort"), ("90%", "fewer build failures"),
                                    ("40%", "fewer duplicate reports")]):
        p.text(x + i * 230, 248, v, SERIF, 46, RUST)
        p.text(x + i * 230, 274, label, SANS, 13.5, MUTED)
    # Deploy time, before and after.
    y = 300
    p.add(f'<rect x="{x}" y="{y}" width="{cw}" height="62" rx="8" fill="{CARD}" stroke="{BORDER}"/>')
    p.text(x + 18, y + 26, "DEPLOY TIME", MONO, 11.5, MUTED, ls=2.2)
    w4 = p.text(x + cw - 18, y + 26, "4min", MONO, 11.5, RUST, "end")
    w10 = p.text(x + cw - 18 - w4 - 7, y + 26, "10min", MONO, 11.5, FAINT, "end")
    sx = x + cw - 18 - w4 - 7 - w10
    p.add(f'<line x1="{sx:.1f}" y1="{y + 22}" x2="{sx + w10:.1f}" y2="{y + 22}" stroke="{FAINT}"/>'
          f'<rect x="{x + 18}" y="{y + 40}" width="{cw - 36}" height="5" rx="2.5" fill="{TRACK}"/>'
          f'<rect class="grow" x="{x + 18}" y="{y + 40}" width="{(cw - 36) * 0.4:.0f}" height="5" rx="2.5" fill="{RUST}"/>')
    y += 62 + 44
    p.add(f'<line x1="{x}" y1="{y - 20}" x2="{x + cw}" y2="{y - 20}" stroke="{HAIR}"/>')
    for k, (head, meta) in enumerate([("Co-Founder & Lead Software Engineer", "QuadSync Technologies  ·  2026"),
                                      ("BS Information Technology, Magna Cum Laude", "National University Manila  ·  GWA 3.78")]):
        p.text(x, y + 14 + k * 54, head, SERIF, 24, INK)
        p.text(x + cw, y + 12 + k * 54, meta, MONO, 12, MUTED, "end")
    sheet(p, y + 14 + 54 + 46)
    return p.render("About: Full-Stack Software Engineer at MEC Networks — 70% less manual deployment, 90% fewer build "
                    "failures, deploys 10 to 4 minutes. Co-founder of QuadSync. BS IT, Magna Cum Laude, NU Manila.")


# ---------------------------------------------------------------- showcase headers (stacked onto the recordings)

SHOWCASE = [
    ("ai-solutions", "02 · AI SOLUTIONS", "Systems that learn.",
     "One prompt, traced through a transformer: tokens, embeddings, self-attention, feed-forward layers and the "
     "autoregressive loop — drawn live in React and GSAP.",
     ["Transformers", "React", "GSAP"]),
    ("ai-game", "03 · AI GAME", "Can the AI guess your drawing?",
     "A convolutional neural network — 6× Conv2D, 3× MaxPool, softmax over 345 classes — trained on 50M Quick, "
     "Draw! doodles and running entirely in the browser.",
     ["CNN", "TensorFlow.js", "WebGL", "Canvas 2D"]),
    ("web-development", "04 · WEB DEVELOPMENT", "Built for the browser.",
     "BuzzMap's public site and admin console for Quezon City: CSV imports checked row by row, reports verified "
     "against street view, and roles revoked within thirty seconds.",
     ["React", "Express", "MongoDB", "Google Maps"]),
    ("app-development", "05 · APP DEVELOPMENT", "Built for the pocket.",
     "Three apps on one phone — Sumbungan for the PNP, BuzzMap for Quezon City, DalaGO for Infanta: offline-first "
     "reports, panic buttons, live dispatch and delivery.",
     ["Flutter", "Laravel Reverb", "WebRTC", "Hive"]),
]
CARD_W = 860


def showcase_header(label, title, sub, chips):
    """Rendered to PNG and stacked on top of the section's recording, so each recording is one card."""
    p = Page(CARD_W)
    pad = 44
    logo(p, pad, 38, 13)
    p.text(pad + 30, 49, label, MONO_M, 11.5, MUTED, ls=2.4)
    p.text(pad - 1, 108, title, SERIF, 46, INK)
    h = paragraph(p, pad, 142, sub, SANS, 14.5, MUTED, CARD_W - 2 * pad - 40, 22)
    tags(p, pad, 142 + h + 2, chips, CARD_W - 2 * pad, size=11, h=26)
    p.h = 142 + h + 2 + 26 + 18
    p.body.insert(0, f'<rect width="{CARD_W}" height="{p.h}" fill="{PAPER}"/>')
    p.add(f'<line x1="{pad}" y1="{p.h - 1}" x2="{CARD_W - pad}" y2="{p.h - 1}" stroke="{HAIR}"/>')
    return p.render(f"{label}: {title}")


# ---------------------------------------------------------------- selected work, on one page

PROJECTS = [
    ("Quadshield", "Philippine National Police", "Sub-second", "two-way voice", "2026"),
    ("BuzzMap", "Quezon City Epidemiology & Surveillance", "142", "barangays covered", "2025"),
    ("Streams", "MEC Networks Corporation", "~190", "API endpoints", "2026"),
    ("AFProTrack", "Armed Forces of the Philippines", "24", "JWT-secured APIs", "2025"),
    ("KaBiS", "Personal project", "~46%", "overlap removed", "2026"),
    ("DalaGO", "Infanta, Quezon Province", "−86%", "asset load", "2026"),
    ("MySher Aviary", "Quezon City · Freelance", "Live", "mysheraviary.com", "2026"),
]


def work():
    p = Page(W)
    navbar(p, "06 · SELECTED WORK", 6 / 7)
    p.text(W / 2, 150, "Shipped, and still running.", SERIF, 52, INK, "middle")
    x0, x1 = 90, 910
    y = 196
    p.text(x0, y + 10, "THE RECORD", SANS_M, 11, MUTED, ls=2.6)
    p.text(x1, y + 10, "THE FIGURE", SANS_M, 11, MUTED, "end", ls=2.6)
    y += 28
    for i, (name, client, fig, fig_label, year) in enumerate(PROJECTS):
        p.add(f'<line x1="{x0}" y1="{y}" x2="{x1}" y2="{y}" stroke="{BORDER}"/>')
        p.text(x0, y + 38, f"{i + 1:02d}", MONO, 11, FAINT)
        p.text(x0 + 34, y + 40, name, SERIF, 28, INK)
        p.text(x0 + 250, y + 37, client, SANS, 14, MUTED)
        lw = p.text(x1, y + 37, fig_label, MONO, 11.5, MUTED, "end")
        p.text(x1 - lw - 12, y + 40, fig, SERIF, 27, RUST, "end")
        y += 60
    p.add(f'<line x1="{x0}" y1="{y}" x2="{x1}" y2="{y}" stroke="{BORDER}"/>')
    p.text(W / 2, y + 40, "Also shipped: Coast2Cart  ·  Optima", SANS, 13.5, FAINT, "middle")
    sheet(p, y + 76)
    return p.render("Selected work: " + "; ".join(f"{n} — {c}" for n, c, *_ in PROJECTS))


def activity():
    p = Page(W)
    navbar(p, "07 · ACTIVITY", 1.0)
    p.text(W / 2, 146, "The commit log.", SERIF, 52, INK, "middle")
    sheet(p, 186)
    return p.render("Activity: The commit log.")


def footer():
    p = Page(W)
    lw = logo(p, W / 2 - 60, 38, 16)
    p.text(W / 2 - 60 + lw + 8, 52, "Tyrel Cruz", SERIF, 22, INK)
    p.runs(W / 2, 92, [("devtyrelcruz.vercel.app", MONO, 12, MUTED, 0.3), ("     ·     ", MONO, 12, FAINT, 0),
                       ("linkedin.com/in/tyrelcruz", MONO, 12, MUTED, 0.3), ("     ·     ", MONO, 12, FAINT, 0),
                       (EMAIL, MONO, 12, MUTED, 0.3)], "middle")
    p.text(W / 2, 124, "© 2026 Tyrel Cruz  ·  Built from the same design as the portfolio", SANS, 12, FAINT, "middle")
    sheet(p, 158)
    return p.render(f"Tyrel Cruz — devtyrelcruz.vercel.app — {EMAIL}")


# ---------------------------------------------------------------- build

def main():
    global SERIF, SANS, SANS_M, SANS_SB, MONO, MONO_M, MONO_I
    fetch_open_fonts()
    c = lambda n: os.path.join(CACHE, n)
    SANS = Font(c("Inter-400.ttf"))
    SANS_M = Font(c("Inter-500.ttf"))
    SANS_SB = Font(c("Inter-600.ttf"))
    MONO = Font(c("IBMPlexMono-400.ttf"), SANS)
    MONO_M = Font(c("IBMPlexMono-500.ttf"), SANS_M)
    MONO_I = Font(c("IBMPlexMono-400i.ttf"), SANS)
    SERIF = Font(GARAMOND, SANS, avoid="~")  # Garamond's tilde sits up at accent height

    os.makedirs(os.path.join(OUT, "src", "headers"), exist_ok=True)
    count = 0
    for theme in THEMES:
        set_theme(theme)
        pages = {"hero": hero(), "about": about(), "work": work(), "activity": activity(), "footer": footer()}
        for key, label in {"portfolio": "Portfolio →", "linkedin": "LinkedIn →", "email": "Email →"}.items():
            pages[f"btn-{key}"] = pill(label)
        for name, svg in pages.items():
            write(f"{name}-{theme}.svg", svg)
        # Headers for the recordings; assets/showcase/make.sh renders these and stacks them onto each one.
        for key, label, title, sub, chips in SHOWCASE:
            write(os.path.join("src", "headers", f"{key}-{theme}.svg"), showcase_header(label, title, sub, chips))
        count += len(pages)
    print(f"Built {count} pages and {len(SHOWCASE) * len(THEMES)} showcase headers in assets/")


if __name__ == "__main__":
    main()
