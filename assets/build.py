#!/usr/bin/env python3
"""
Builds the Apple-style SVG cards used in README.md.

    python3 assets/build.py

Edit the content in this file, re-run it, and commit the regenerated assets/*.svg.
Requires macOS `sips` (used to resize the banner images embedded in project cards).
"""
import base64
import html
import os
import subprocess
import tempfile

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
OUT = os.path.join(ROOT, "assets")

SANS = "-apple-system, BlinkMacSystemFont, 'SF Pro Display', 'Helvetica Neue', 'Segoe UI', Helvetica, Arial, sans-serif"
MONO = "'SF Mono', SFMono-Regular, Menlo, Monaco, Consolas, 'Liberation Mono', monospace"

THEMES = {
    "light": dict(card="#F5F5F7", text="#1D1D1F", sub="#6E6E73", line="#D2D2D7",
                  accent="#0071E3", chip="#FFFFFF", stroke="#E3E3E8", track="#E3E3E8"),
    "dark": dict(card="#161618", text="#F5F5F7", sub="#A1A1A6", line="#2C2C2E",
                 accent="#2997FF", chip="#2C2C2E", stroke="#262629", track="#2C2C2E"),
}

GRADS = {
    "intel": ["#0894FF", "#C959DD", "#FF2E54", "#FF9004"],
    "blue": ["#0A84FF", "#5E5CE6"],
    "sunset": ["#FF6B00", "#FF2D55"],
    "mint": ["#00B37E", "#0A84FF"],
    "violet": ["#AF52DE", "#FF2D55"],
    "gold": ["#FF9500", "#FF3B30"],
    "teal": ["#30B0C7", "#5E5CE6"],
}


# ---------------------------------------------------------------- primitives

def e(s):
    return html.escape(str(s), quote=True)


def tw(s, size, bold=False):
    """Rough text width; deliberately generous so wrapping never overflows."""
    w = 0.0
    for c in s:
        if c in "il.,:;'|!Ijft()[] ":
            w += 0.30
        elif c in "mwMW@":
            w += 0.86
        elif c in "→—":
            w += 0.95
        elif c == "·":
            w += 0.30
        elif c.isupper() or c.isdigit():
            w += 0.65
        else:
            w += 0.55
    return w * size * (1.06 if bold else 1.0)


def wrap(s, size, maxw, bold=False):
    lines, cur = [], ""
    for word in s.split():
        trial = f"{cur} {word}".strip()
        if cur and tw(trial, size, bold) > maxw:
            lines.append(cur)
            cur = word
        else:
            cur = trial
    if cur:
        lines.append(cur)
    return lines


def T(x, y, s, size, fill, weight=400, anchor="start", ls=0, mono=False, cls=""):
    fam = ("m" if mono else "s") + (f" {cls}" if cls else "")
    return (f'<text class="{fam}" x="{x:.1f}" y="{y:.1f}" font-size="{size}" font-weight="{weight}" '
            f'fill="{fill}" text-anchor="{anchor}" letter-spacing="{ls}">{e(s)}</text>')


def grad(gid, colors, x2=1, y2=0):
    n = max(len(colors) - 1, 1)
    stops = "".join(f'<stop offset="{i / n:.2f}" stop-color="{c}"/>' for i, c in enumerate(colors))
    return f'<linearGradient id="{gid}" x1="0" y1="0" x2="{x2}" y2="{y2}">{stops}</linearGradient>'


def all_grads():
    return "".join(grad(f"g-{k}", v) for k, v in GRADS.items())


def doc(w, h, body, title, defs="", css=""):
    return (f'<svg xmlns="http://www.w3.org/2000/svg" width="{w}" height="{h:.0f}" viewBox="0 0 {w} {h:.0f}" '
            f'role="img" aria-label="{e(title)}"><title>{e(title)}</title>'
            f'<defs><style>.s{{font-family:{SANS}}}.m{{font-family:{MONO}}}{css}</style>{defs}</defs>'
            f'{body}</svg>')


def chips(x, y, items, th, size=14, maxw=10_000, h=30, gap=8):
    """Renders a wrapping row of pill chips. Returns (svg, height used)."""
    out, cx, cy = [], x, y
    for it in items:
        w = tw(it, size) + 26
        if cx > x and cx + w > x + maxw:
            cx, cy = x, cy + h + gap
        out.append(f'<rect x="{cx:.1f}" y="{cy:.1f}" width="{w:.1f}" height="{h}" rx="{h / 2}" '
                   f'fill="{th["chip"]}" stroke="{th["stroke"]}"/>')
        out.append(T(cx + w / 2, cy + h / 2 + size * 0.36, it, size, th["text"], 500, "middle"))
        cx += w + gap
    return "".join(out), cy + h - y


def write(name, content):
    with open(os.path.join(OUT, name), "w", encoding="utf-8") as f:
        f.write(content)


def themed(name, fn, *args):
    for tname, th in THEMES.items():
        write(f"{name}-{tname}.svg", fn(th, *args))


_img_cache = {}


def jpeg_uri(src, width):
    key = (src, width)
    if key not in _img_cache:
        with tempfile.TemporaryDirectory() as d:
            out = os.path.join(d, "o.jpg")
            subprocess.run(["sips", "-s", "format", "jpeg", "-s", "formatOptions", "72",
                            "--resampleWidth", str(width), os.path.join(ROOT, src), "--out", out],
                           check=True, capture_output=True)
            with open(out, "rb") as f:
                _img_cache[key] = "data:image/jpeg;base64," + base64.b64encode(f.read()).decode()
    return _img_cache[key]


def avatar_uri():
    with tempfile.TemporaryDirectory() as d:
        out = os.path.join(d, "a.png")
        subprocess.run(["sips", "-c", "116", "116", "--cropOffset", "107", "449",
                        os.path.join(ROOT, "header_dark.png"), "--out", out],
                       check=True, capture_output=True)
        with open(out, "rb") as f:
            return "data:image/png;base64," + base64.b64encode(f.read()).decode()


GLOW_CSS = """
@keyframes d1{0%,100%{transform:translate(0,0)}50%{transform:translate(110px,-24px)}}
@keyframes d2{0%,100%{transform:translate(0,0)}50%{transform:translate(-120px,-10px)}}
@keyframes d3{0%,100%{transform:translate(0,0)}50%{transform:translate(70px,18px)}}
.g1{animation:d1 13s ease-in-out infinite}.g2{animation:d2 15s ease-in-out infinite}
.g3{animation:d3 11s ease-in-out infinite}.g4{animation:d2 17s ease-in-out infinite reverse}
"""


def glows(w, cy, opacity=0.55):
    xs = [w * 0.18, w * 0.42, w * 0.62, w * 0.84]
    out = [f'<g filter="url(#blur)" opacity="{opacity}">']
    for i, (x, c) in enumerate(zip(xs, GRADS["intel"])):
        out.append(f'<ellipse class="g{i + 1}" cx="{x:.0f}" cy="{cy}" rx="{w * 0.2:.0f}" ry="110" fill="{c}"/>')
    out.append("</g>")
    return "".join(out)


BLUR = ('<filter id="blur" x="-50%" y="-50%" width="200%" height="200%">'
        '<feGaussianBlur stdDeviation="70"/></filter>')


# ---------------------------------------------------------------- hero

def hero():
    W, H = 1000, 560
    css = GLOW_CSS + """
@keyframes spin{to{transform:rotate(360deg)}}
.ring{transform-box:fill-box;transform-origin:center;animation:spin 7s linear infinite}
@keyframes cyc{0%{opacity:0;transform:translateY(12px)}7%,27%{opacity:1;transform:translateY(0)}
33%,100%{opacity:0;transform:translateY(-12px)}}
.p{opacity:0;animation:cyc 12s ease-in-out infinite backwards}.p1{opacity:1}.p2{animation-delay:4s}.p3{animation-delay:8s}
@keyframes rise{from{opacity:0;transform:translateY(16px)}to{opacity:1;transform:translateY(0)}}
.r1{animation:rise 1s .1s ease-out backwards}.r2{animation:rise 1s .3s ease-out backwards}
.r3{animation:rise 1s .5s ease-out backwards}.r4{animation:rise 1s .9s ease-out backwards}
"""
    defs = (BLUR + all_grads() + grad("ringg", GRADS["intel"] + ["#0894FF"], 1, 1)
            + f'<clipPath id="card"><rect width="{W}" height="{H}" rx="36"/></clipPath>'
            + '<clipPath id="av"><circle cx="500" cy="118" r="50"/></clipPath>')
    phrases = ["Real-time systems that actually ship.",
               "One product. Web, mobile, and backend.",
               "Built for the PNP, AFP, and Quezon City."]
    body = [f'<g clip-path="url(#card)"><rect width="{W}" height="{H}" fill="#000"/>',
            glows(W, H + 40, 0.6),
            '<g class="r1">',
            '<circle class="ring" cx="500" cy="118" r="57" fill="none" stroke="url(#ringg)" stroke-width="3"/>',
            f'<image href="{avatar_uri()}" x="442" y="60" width="116" height="116" clip-path="url(#av)"/>',
            '</g>',
            f'<g class="r2">{T(500, 236, "Full-Stack Software Engineer", 21, "#A1A1A6", 600, "middle", 0.2)}</g>',
            f'<g class="r3">{T(500, 326, "Tyrel Cruz.", 96, "#F5F5F7", 700, "middle", -3)}</g>']
    for i, p in enumerate(phrases, 1):
        body.append(T(500, 394, p, 32, "url(#g-intel)", 600, "middle", -0.5, cls=f"p p{i}"))
    meta = "MEC Networks Corp.   ·   Magna Cum Laude, NU Manila   ·   Philippines"
    body.append(f'<g class="r4">{T(500, 498, meta, 17, "#D1D1D6", 500, "middle")}</g></g>')
    return doc(W, H, "".join(body), "Tyrel Cruz — Full-Stack Software Engineer", defs, css)


# ---------------------------------------------------------------- buttons

def pill(th, label, primary):
    size, h = 17, 48
    w = tw(label, size, True) + 52
    if primary:
        shape = f'<rect width="{w:.0f}" height="{h}" rx="{h / 2}" fill="#0071E3"/>'
        color = "#FFFFFF"
    else:
        shape = (f'<rect x="1" y="1" width="{w - 2:.0f}" height="{h - 2}" rx="{(h - 2) / 2}" '
                 f'fill="none" stroke="{th["accent"]}" stroke-width="1.5"/>')
        color = th["accent"]
    return doc(w, h, shape + T(w / 2, h / 2 + 6, label, size, color, 600, "middle"), label)


def navchip(th, label):
    size, h = 15, 40
    w = tw(label, size) + 40
    body = (f'<rect x="0.5" y="0.5" width="{w - 1:.0f}" height="{h - 1}" rx="{(h - 1) / 2}" '
            f'fill="{th["card"]}" stroke="{th["stroke"]}"/>'
            + T(w / 2, h / 2 + 5.5, label, size, th["text"], 500, "middle"))
    return doc(w, h, body, label)


# ---------------------------------------------------------------- section header

def section(th, eyebrow, title, subtitle):
    W = 1000
    body = [T(2, 34, eyebrow, 18, "url(#g-intel)", 600, ls=0.2),
            T(0, 96, title, 56, th["text"], 700, ls=-1.8)]
    y = 96
    for line in wrap(subtitle, 21, 900):
        y += 34
        body.append(T(2, y, line, 21, th["sub"], 400))
    return doc(W, y + 22, "".join(body), f"{eyebrow}: {title}", all_grads())


# ---------------------------------------------------------------- terminal

def terminal():
    W, pad = 1000, 24
    fs, lh, cw = 15, 27, 9.0  # font size, line height, monospace char width (0.6em)
    x0 = pad + 32
    lines = [
        ("cmd", "whoami"),
        ("out", [("Tyrel Cruz", "#FFFFFF", 700), (" — Full-Stack Software Engineer @ MEC Networks Corp.", "#E5E5EA", 400)]),
        ("cmd", "cat focus.txt"),
        ("out", [("  realtime  ", "#FF9F0A", 600), ("WebSockets · WebRTC · Laravel Reverb · LiveKit", "#E5E5EA", 400)]),
        ("out", [("  product   ", "#FF9F0A", 600), ("React 19 · TypeScript · Flutter · Laravel · Node.js", "#E5E5EA", 400)]),
        ("out", [("  infra     ", "#FF9F0A", 600), ("Docker · Nginx · Redis · GitHub Actions · Linux VPS", "#E5E5EA", 400)]),
        ("cmd", "ls shipped-for/"),
        ("out", [("PNP/   AFP/   QC-Epidemiology/   MEC-Networks/   freelance-clients/", "#64D2FF", 700)]),
        ("cmd", "echo $STATUS"),
        ("out", [("● ", "#30D158", 700), ("Open to new opportunities", "#30D158", 600)]),
        ("end", ""),
    ]
    top = pad + 44 + 42
    H = top + lh * (len(lines) - 1) + 40 + pad
    prompt = [("tyrel@macbook", "#30D158", 600), (" ~ ", "#64D2FF", 600), ("% ", "#F5F5F7", 400)]
    plen = sum(len(s) for s, _, _ in prompt)

    def spans(parts):
        return "".join(f'<tspan fill="{c}" font-weight="{wt}">{e(s)}</tspan>' for s, c, wt in parts)

    body, defs, t = [], [], 0.5
    body.append(f'<rect x="{pad}" y="{pad}" width="{W - 2 * pad}" height="{H - 2 * pad}" rx="16" '
                f'fill="#1C1C1E" stroke="#3A3A3C" filter="url(#shadow)"/>')
    body.append(f'<path d="M{pad} {pad + 16}a16 16 0 0 1 16-16h{W - 2 * pad - 32}a16 16 0 0 1 16 16v28H{pad}z" fill="#2C2C2E"/>')
    body.append(f'<line x1="{pad}" y1="{pad + 44}" x2="{W - pad}" y2="{pad + 44}" stroke="#3A3A3C"/>')
    for i, c in enumerate(["#FF5F57", "#FEBC2E", "#28C840"]):
        body.append(f'<circle cx="{pad + 22 + i * 20}" cy="{pad + 22}" r="6.5" fill="{c}"/>')
    body.append(T(W / 2, pad + 27, "tyrel — -zsh — 100×30", 13, "#8E8E93", 500, "middle"))

    # Every element is visible by default; the CSS only hides it until its delay (fill: backwards),
    # so the terminal still reads correctly anywhere animations don't run.
    for i, (kind, val) in enumerate(lines):
        y = top + i * lh
        if kind in ("cmd", "end"):
            cmd_x = x0 + plen * cw
            g = [f'<g class="ln" style="animation-delay:{t:.2f}s">',
                 f'<text class="m" x="{x0}" y="{y}" font-size="{fs}">{spans(prompt)}</text>']
            if kind == "cmd":
                t += 0.35
                typed = "".join(f'<tspan class="ln" style="animation-delay:{t + k * 0.06:.2f}s">{e(c)}</tspan>'
                                for k, c in enumerate(val))
                g.append(f'<text class="m" x="{cmd_x}" y="{y}" font-size="{fs}" fill="#F5F5F7">{typed}</text>')
                t += 0.06 * len(val) + 0.4
            else:
                g.append(f'<rect class="cur" x="{cmd_x + 2}" y="{y - 15}" width="9" height="19" fill="#F5F5F7"/>')
            g.append("</g>")
            body.append("".join(g))
        else:
            body.append(f'<g class="ln" style="animation-delay:{t:.2f}s">'
                        f'<text class="m" x="{x0}" y="{y}" font-size="{fs}" xml:space="preserve">{spans(val)}</text></g>')
            t += 0.18
    defs.append('<filter id="shadow" x="-10%" y="-10%" width="120%" height="130%">'
                '<feDropShadow dx="0" dy="10" stdDeviation="12" flood-color="#000" flood-opacity="0.28"/></filter>')
    css = ("text{white-space:pre}@keyframes show{from{opacity:0}to{opacity:0}}"
           ".ln{animation:show .01s linear backwards}"
           "@keyframes blink{0%,49%{opacity:1}50%,100%{opacity:0}}.cur{animation:blink 1.1s step-end infinite}")
    return doc(W, H, "".join(body), "Terminal: whoami", "".join(defs), css)


# ---------------------------------------------------------------- bento highlights

def bento(th):
    W, gap, pad = 1000, 16, 32
    third = (W - 2 * gap) / 3
    out = []

    def tile(x, y, w, h, eyebrow, number, nsize, gkey, caption, extra=""):
        out.append(f'<rect x="{x:.1f}" y="{y:.1f}" width="{w:.1f}" height="{h}" rx="28" fill="{th["card"]}" stroke="{th["stroke"]}"/>')
        out.append(T(x + pad, y + pad + 13, eyebrow, 14, th["sub"], 600, ls=0.2))
        out.append(T(x + pad - 2, y + pad + 26 + nsize * 0.8, number, nsize, f"url(#g-{gkey})", 700, ls=-2))
        lines = wrap(caption, 17, w - 2 * pad)
        for j, line in enumerate(reversed(lines)):
            out.append(T(x + pad, y + h - pad - j * 25, line, 17, th["text"], 500))
        out.append(extra)

    # Row 1
    r1 = 340
    bars = []
    bx, by = 32 + 92, 174
    for j, (label, frac, fill) in enumerate([("Before", 1.0, th["track"]), ("After", 0.4, "url(#g-blue)")]):
        yy = by + j * 34
        bars.append(T(32, yy + 11, label, 14, th["sub"], 500))
        bars.append(f'<rect class="bar" style="animation-delay:{0.3 + j * 0.5}s" x="{bx}" y="{yy}" '
                    f'width="{400 * frac:.0f}" height="12" rx="6" fill="{fill}"/>')
        bars.append(T(bx + 400 * frac + 12, yy + 11, "10 min" if j == 0 else "4 min", 14, th["text"], 600))
    tile(0, 0, 592, r1, "CI/CD  ·  MEC NETWORKS", "10 → 4 min", 88, "blue",
         "Deploy time after I rebuilt CI/CD across three codebases, with 70% less manual effort.", "".join(bars))

    rx, rcx, rcy, rr = 608, 608 + 392 - 32 - 52, 32 + 52, 46
    circ = 2 * 3.14159 * rr
    ring = (f'<circle cx="{rcx}" cy="{rcy}" r="{rr}" fill="none" stroke="{th["track"]}" stroke-width="14"/>'
            f'<circle cx="{rcx}" cy="{rcy}" r="{rr}" fill="none" stroke="url(#g-sunset)" stroke-width="14" '
            f'stroke-linecap="round" stroke-dasharray="{circ:.1f}" stroke-dashoffset="{circ * 0.1:.1f}" '
            f'transform="rotate(-90 {rcx} {rcy})" class="ringp"/>')
    css = (".bar{transform-box:fill-box;transform-origin:left;animation:grow 1.2s cubic-bezier(.2,.8,.2,1) backwards}"
           "@keyframes grow{from{transform:scaleX(0)}}"
           f".ringp{{animation:fill 1.6s .4s cubic-bezier(.2,.8,.2,1) backwards}}@keyframes fill{{from{{stroke-dashoffset:{circ:.1f}}}}}")
    tile(rx, 0, 392, r1, "RELIABILITY", "−90%", 72, "sunset",
         "fewer build failures after automating pipelines with GitHub Actions and Docker Compose.", ring)

    # Row 2 and 3
    rows = [
        (r1 + gap, 260, [("BUZZMAP", "380+", "mint", "active users reporting dengue risk across 142 barangays."),
                         ("KABIS", "110 → 1", "violet", "per-row database queries collapsed into one batched write."),
                         ("DALAGO", "−86%", "gold", "mobile asset size, from 9.25MB down to 1.27MB.")]),
        (r1 + gap + 260 + gap, 240, [("STREAMS", "~190", "teal", "API endpoints across 12 role types and 3 clients."),
                                     ("QUADSHIELD", "<1s", "intel", "two-way emergency voice between citizens and police."),
                                     ("NU MANILA", "3.78", "blue", "GWA. Graduated Magna Cum Laude, BS IT.")]),
    ]
    for y, h, items in rows:
        for k, (eb, num, g, cap) in enumerate(items):
            tile(k * (third + gap), y, third, h, eb, num, 58, g, cap)
    H = rows[-1][0] + rows[-1][1]
    return doc(W, H, "".join(out), "Highlights", all_grads(), css)


# ---------------------------------------------------------------- experience

EXPERIENCE = [
    dict(date="Nov 2025 — Present", now=True, role="Full-Stack Software Engineer", org="MEC Networks Corporation",
         summary="Own CI/CD for three codebases and build internal platforms with real-time updates, "
                 "background job orchestration, and layered authentication.",
         chips=["−65% deploy time", "−90% build failures", "Laravel Reverb", "5+ integrations", "JWT · RBAC · OTP"]),
    dict(date="Mar 2026 — Nov 2026", role="Co-Founder & Lead Software Engineer", org="QuadSync Technologies / Freelance",
         summary="Led full-stack delivery for government, enterprise, and consumer clients, from mobile apps "
                 "to real-time infrastructure and IoT.",
         chips=["WebRTC", "WebSockets", "Docker Compose", "Nginx · Redis", "ESP32"]),
    dict(date="Aug 2022 — Sep 2026", role="BS Information Technology", org="National University Manila",
         summary="Specialization in Mobile and Web Applications. Graduated Magna Cum Laude with a 3.78 GWA.",
         chips=["Magna Cum Laude", "GWA 3.78", "Software Engineering", "Database Systems", "AI"]),
]


def experience(th):
    W, pad, cx = 1000, 44, 300
    out, y = [], 0
    for i, ex in enumerate(EXPERIENCE):
        top = y
        out.append(T(pad, top + 50, ex["date"], 15, th["sub"], 500))
        if ex.get("now"):
            out.append(f'<rect x="{pad}" y="{top + 66}" width="74" height="26" rx="13" fill="#30D158" fill-opacity="0.15"/>'
                       f'<circle cx="{pad + 15}" cy="{top + 79}" r="4" fill="#30D158"/>'
                       + T(pad + 25, top + 84, "Now", 13, "#28A745" if th is THEMES["light"] else "#30D158", 600))
        out.append(T(cx, top + 52, ex["role"], 28, th["text"], 700, ls=-0.6))
        out.append(T(cx, top + 82, ex["org"], 18, th["accent"], 500))
        yy = top + 82
        for line in wrap(ex["summary"], 18, W - cx - pad):
            yy += 29
            out.append(T(cx, yy, line, 18, th["sub"], 400))
        svg, ch = chips(cx, yy + 20, ex["chips"], th, 13, W - cx - pad, 28)
        out.append(svg)
        y = yy + 20 + ch + 40
        if i < len(EXPERIENCE) - 1:
            out.append(f'<line x1="{pad}" y1="{y:.0f}" x2="{W - pad}" y2="{y:.0f}" stroke="{th["line"]}"/>')
    body = f'<rect width="{W}" height="{y:.0f}" rx="28" fill="{th["card"]}" stroke="{th["stroke"]}"/>' + "".join(out)
    return doc(W, y, body, "Experience and education")


# ---------------------------------------------------------------- projects

def streams_art(x, y, w, h):
    pts = [(0.08, 0.72), (0.26, 0.42), (0.45, 0.6), (0.63, 0.3), (0.82, 0.5), (0.94, 0.22)]
    P = [(x + px * w, y + py * h) for px, py in pts]
    d = f"M{P[0][0]:.0f} {P[0][1]:.0f}" + "".join(
        f" Q{(a[0] + b[0]) / 2:.0f} {a[1]:.0f} {b[0]:.0f} {b[1]:.0f}" for a, b in zip(P, P[1:]))
    s = [f'<rect x="{x}" y="{y}" width="{w}" height="{h}" fill="url(#streams-bg)"/>',
         f'<rect x="{x}" y="{y}" width="{w}" height="{h}" fill="url(#dots)"/>',
         f'<path d="{d}" fill="none" stroke="url(#g-intel)" stroke-width="3" stroke-linecap="round" '
         f'stroke-dasharray="8 10"><animate attributeName="stroke-dashoffset" from="0" to="-180" dur="4s" repeatCount="indefinite"/></path>']
    for i, (px, py) in enumerate(P):
        c = GRADS["intel"][i % 4]
        s.append(f'<circle cx="{px:.0f}" cy="{py:.0f}" r="14" fill="{c}" opacity="0.25">'
                 f'<animate attributeName="r" values="8;18;8" dur="2.4s" begin="{i * 0.4}s" repeatCount="indefinite"/></circle>'
                 f'<circle cx="{px:.0f}" cy="{py:.0f}" r="6" fill="{c}" stroke="#fff" stroke-width="2"/>')
    for i, (big, small) in enumerate([("~190", "endpoints"), ("12", "role types"), ("9", "services")]):
        bx, by, bw = x + 24 + i * ((w - 48) / 3), y + h - 70, (w - 48) / 3 - 10
        s.append(f'<rect x="{bx:.0f}" y="{by:.0f}" width="{bw:.0f}" height="50" rx="14" fill="#FFFFFF" fill-opacity="0.1" stroke="#FFFFFF" stroke-opacity="0.18"/>'
                 + T(bx + 14, by + 32, big, 20, "#FFFFFF", 700) + T(bx + 14 + tw(big, 20, True) + 6, by + 31, small, 13, "#D1D1D6", 500))
    return "".join(s)


STREAMS_DEFS = (grad("streams-bg", ["#0B1E4A", "#2A0E4F"], 1, 1)
                + '<pattern id="dots" width="22" height="22" patternUnits="userSpaceOnUse">'
                  '<circle cx="2" cy="2" r="1.3" fill="#FFFFFF" fill-opacity="0.14"/></pattern>')


def project_card(th, p, w, featured=False, min_h=0):
    s = 1.3 if featured else 1.0
    pad = 40 if featured else 28
    img_h = round(w * 941 / 1670)
    parts = []
    y = img_h + pad + 14 * s
    parts.append(T(pad, y, p["eyebrow"].upper(), round(13 * s), th["sub"], 600, ls=0.4))
    y += 40 * s
    parts.append(T(pad - 1, y, p["title"], round(30 * s), th["text"], 700, ls=-0.8))
    fs = round(17 * s)
    for line in wrap(p["tagline"], fs, w - 2 * pad):
        y += fs * 1.45
        parts.append(T(pad, y, line, fs, th["sub"], 400))
    svg, ch = chips(pad, y + 20, p["chips"], th, round(13 * min(s, 1.1)), w - 2 * pad, 28)
    parts.append(svg)
    H = max(y + 20 + ch + pad + 26, min_h)
    if p.get("cta", True):
        parts.append(T(w - pad, H - pad + 4, "Case study ↓", round(15 * min(s, 1.1)), th["accent"], 600, "end"))

    if p["img"]:
        art = f'<image href="{jpeg_uri(p["img"], 1200 if featured else 820)}" width="{w}" height="{img_h}" preserveAspectRatio="xMidYMid slice"/>'
    else:
        art = streams_art(0, 0, w, img_h)
    body = (f'<g clip-path="url(#clip)"><rect width="{w}" height="{H:.0f}" fill="{th["card"]}"/>{art}</g>'
            f'<rect x="0.5" y="0.5" width="{w - 1}" height="{H - 1:.0f}" rx="28" fill="none" stroke="{th["stroke"]}"/>'
            + "".join(parts))
    defs = all_grads() + STREAMS_DEFS + f'<clipPath id="clip"><rect width="{w}" height="{H:.0f}" rx="28"/></clipPath>'
    return doc(w, H, body, f'{p["title"]}: {p["tagline"]}', defs), H


PROJECTS = {
    "quadshield": dict(img="pnpsumbungan.png", eyebrow="Philippine National Police  ·  Featured on national TV",
                       title="Quadshield",
                       tagline="Emergency dispatch with sub-second two-way voice, an ESP32 panic button, and an offline-first mobile app.",
                       chips=["Laravel Reverb", "LiveKit WebRTC", "Flutter", "React", "ESP32 · C++", "Docker"]),
    "streams": dict(img=None, eyebrow="MEC Networks  ·  4-person team", title="STREAMS",
                    tagline="Field-service platform for dispatch, GPS tracking, reporting, client sign-off, and billing.",
                    chips=["Laravel 12", "React 19", "Flutter", "Reverb", "Redis"]),
    "buzzmap": dict(img="Buzzmap.png", eyebrow="Quezon City Epidemiology Division", title="BuzzMap",
                    tagline="Crowdsourced dengue reporting with AI-driven prevention advice and geospatial risk scoring.",
                    chips=["Flutter", "React", "Tailwind", "Google GenAI"]),
    "afprotrack": dict(img="Afprotrack.png", eyebrow="Armed Forces of the Philippines", title="AFProTrack",
                       tagline="Personnel and trainee management for the Philippine Army's Training and Doctrine Command.",
                       chips=["Flutter", "React 19", "Redux", "Node.js", "MongoDB"]),
    "kabis": dict(img="Kabis.png", eyebrow="Personal project", title="KABIS",
                  tagline="Board exam review with an adaptive mock-exam engine and an AI-assisted ingestion pipeline.",
                  chips=["TypeScript", "React 19", "Express", "MySQL", "Docker"]),
    "dalago": dict(img="dalago.png", eyebrow="Infanta, Quezon Province", title="DalaGO",
                   tagline="Food delivery marketplace connecting customers, riders, and merchants.",
                   chips=["Laravel 12", "Flutter", "Sanctum", "MySQL"]),
    "mysheraviary": dict(img="mysheraviary.png", eyebrow="Freelance  ·  Quezon City", title="MysherAviary",
                         tagline="Bird marketplace and management platform with customer-facing storefront and admin tools.",
                         chips=["React", "Express.js", "Supabase", "PostgreSQL"]),
    "coast2cart": dict(img="Coast2Cart.png", eyebrow="E-commerce", title="Coast2Cart",
                       tagline="Seafood and coastal souvenir marketplace from Barangay Baybayon.",
                       chips=["MongoDB", "Express", "React", "Node.js"], cta=False),
    "optima": dict(img="Optima.png", eyebrow="Support platform", title="Optima",
                   tagline="Support ticketing dashboard with AI-assisted search and ticket triage.",
                   chips=["Laravel", "React", "MySQL", "OpenAI", "Docker"], cta=False),
}
PAIRS = [("streams", "buzzmap"), ("afprotrack", "kabis"), ("dalago", "mysheraviary"), ("coast2cart", "optima")]


def build_projects():
    for tname, th in THEMES.items():
        svg, _ = project_card(th, PROJECTS["quadshield"], 1000, featured=True)
        write(f"project-quadshield-{tname}.svg", svg)
        for a, b in PAIRS:
            h = max(project_card(th, PROJECTS[k], 490)[1] for k in (a, b))
            for k in (a, b):
                write(f"project-{k}-{tname}.svg", project_card(th, PROJECTS[k], 490, min_h=h)[0])


# ---------------------------------------------------------------- toolkit

TOOLKIT = [
    ("Frontend", "blue", ["Next.js", "React", "TypeScript", "JavaScript", "HTML", "CSS", "Tailwind CSS"]),
    ("Mobile", "mint", ["Flutter", "Dart", "Hive", "Offline-first", "Android"]),
    ("Backend & APIs", "violet", ["PHP", "Laravel", "Node.js", "Express.js", "REST", "WebSockets", "WebRTC", "JWT", "Sanctum"]),
    ("Data", "gold", ["PostgreSQL", "Supabase", "MySQL", "MongoDB", "Redis"]),
    ("DevOps", "teal", ["Git", "GitHub Actions", "CI/CD", "Docker", "Docker Compose", "Nginx", "Linux", "Bash", "Postman"]),
    ("AI & IoT", "sunset", ["Claude", "Cursor", "Google GenAI", "ESP32", "C++"]),
]


def toolkit(th):
    W, gap, pad = 1000, 16, 28
    cw = (W - 2 * gap) / 3
    out, y = [], 0
    for r in range(0, len(TOOLKIT), 3):
        row = TOOLKIT[r:r + 3]
        rendered = []
        for k, (name, g, items) in enumerate(row):
            x = k * (cw + gap)
            svg, ch = chips(x + pad, y + 70, items, th, 13, cw - 2 * pad, 28)
            rendered.append((x, name, g, svg, ch))
        h = max(ch for *_, ch in rendered) + 70 + pad
        for x, name, g, svg, _ in rendered:
            out.append(f'<rect x="{x:.1f}" y="{y}" width="{cw:.1f}" height="{h}" rx="24" fill="{th["card"]}" stroke="{th["stroke"]}"/>')
            out.append(f'<circle cx="{x + pad + 7}" cy="{y + 42}" r="7" fill="url(#g-{g})"/>')
            out.append(T(x + pad + 24, y + 49, name, 20, th["text"], 700, ls=-0.3))
            out.append(svg)
        y += h + gap
    return doc(W, y - gap, "".join(out), "Toolkit", all_grads())


# ---------------------------------------------------------------- contact

def contact():
    W, H = 1000, 380
    defs = BLUR + all_grads() + f'<clipPath id="card"><rect width="{W}" height="{H}" rx="36"/></clipPath>'
    body = (f'<g clip-path="url(#card)"><rect width="{W}" height="{H}" fill="#000"/>{glows(W, -60, 0.5)}'
            + T(500, 172, "Let's build something great.", 58, "#F5F5F7", 700, "middle", -1.8)
            + T(500, 222, "Open to full-stack and software engineering roles.", 21, "#A1A1A6", 400, "middle")
            + T(500, 296, "tyrelcruz90@gmail.com", 28, "url(#g-intel)", 600, "middle", -0.3)
            + "</g>")
    return doc(W, H, body, "Let's build something great. tyrelcruz90@gmail.com", defs, GLOW_CSS)


# ---------------------------------------------------------------- build

SECTIONS = {
    "overview": ("Overview", "Hello, world.", "A quick look at who I am and what I work on, straight from the terminal."),
    "highlights": ("Highlights", "Numbers that shipped.", "Measured results from production systems I've built and run."),
    "experience": ("Experience", "Where I've built.", "Tap any section below for the full details."),
    "work": ("Work", "Built for real people.", "Government, enterprise, and consumer products. Click a card for the case study."),
    "ask": ("Before the interview", "Ask me about.", "The stories I can go deepest on. Open one for a preview."),
    "toolkit": ("Toolkit", "Everything I build with.", "From the database to the device."),
    "activity": ("Activity", "On GitHub.", "Live stats, updated automatically."),
}

NAV = ["Overview", "Highlights", "Experience", "Work", "Ask me", "Toolkit"]
PILLS = {"portfolio": ("Visit portfolio ↗", True), "linkedin": ("LinkedIn ↗", False), "email": ("Email ↗", False)}


def main():
    os.makedirs(OUT, exist_ok=True)
    write("hero.svg", hero())
    write("terminal.svg", terminal())
    write("contact.svg", contact())
    for key, (label, primary) in PILLS.items():
        themed(f"btn-{key}", pill, label, primary)
    for label in NAV:
        themed(f"nav-{label.lower().replace(' ', '-')}", navchip, label)
    for key, args in SECTIONS.items():
        themed(f"h-{key}", section, *args)
    themed("highlights", bento)
    themed("experience", experience)
    themed("toolkit", toolkit)
    build_projects()
    print("Built", len(os.listdir(OUT)) - 1, "files in assets/")


if __name__ == "__main__":
    main()
