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

# Tokens from the portfolio's index.css (and the brand README for the mark).
PAPER = "#faf9f7"
INK = "#101214"
MUTED = "#646972"
FAINT = "#a3a6ac"
RUST = "#a54a28"
BORDER = "#dfdcd6"
HAIR = "#e9e6e0"
CARD = "#ffffff"
MARK_INK = "#25262b"
MARK_RUST = "#a5502e"


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

    def __init__(self, path, fallback=None):
        Font._n += 1
        self.key = f"f{Font._n}"
        self.tt = TTFont(path)
        self.upm = self.tt["head"].unitsPerEm
        self.cmap = self.tt.getBestCmap()
        self.glyphs = self.tt.getGlyphSet()
        self.hmtx = self.tt["hmtx"]
        self.fallback = fallback
        self.kern = {}
        if "kern" in self.tt:
            for table in self.tt["kern"].kernTables:
                self.kern.update(getattr(table, "kernTable", {}))

    def resolve(self, ch):
        if ord(ch) in self.cmap or not self.fallback:
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
SECTIONS = ["01 · ABOUT", "02 · SELECTED WORK", "03 · ON AIR", "04 · HOW IT WORKS",
            "05 · INTERVIEW", "06 · STACK", "07 · ACTIVITY", "08 · CONTACT"]

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


def sheet(page, h):
    page.h = h
    page.body.insert(0, f'<rect x="0.5" y="0.5" width="{W - 1}" height="{h - 1}" rx="22" fill="{PAPER}" stroke="{HAIR}"/>')
    page.defs.append(f'<clipPath id="sheet"><rect width="{W}" height="{h}" rx="22"/></clipPath>')


def navbar(page, label, progress):
    """The portfolio's navbar: mark and name, the section label, Menu, Start a project."""
    k = 18 / 145.93
    page.add(f'<g transform="translate(36 31) scale({k:.4f}) translate(-12.69 -52.12)">'
             f'<path fill="{MARK_INK}" d="{LOGO_PATH}"/><path fill="{MARK_RUST}" d="M189.7 52.12H243.31V198.05H189.7Z"/></g>')
    page.text(36 + 230.62 * k + 9, 46, "Tyrel Cruz", SERIF, 23, INK)
    if label:
        page.text(W / 2, 45, label, MONO_M, 12, MUTED, "middle", ls=2.6)
    w = page.text(W - 36, 45, "Start a project →", SANS, 14.5, INK, "end")
    page.add(f'<line x1="{W - 36 - w:.1f}" y1="50" x2="{W - 36}" y2="50" stroke="{INK}" stroke-width="1"/>')
    page.text(W - 36 - w - 30, 45, "Menu", SANS, 14.5, INK, "end")
    if progress:
        page.add(f'<g clip-path="url(#sheet)"><rect class="grow" width="{W * progress:.0f}" height="2.5" fill="{RUST}"/></g>')


def tags(page, x, y, items, maxw, round_=True, size=11.5, h=28, gap=8):
    cx, cy = x, y
    for it in items:
        tw = width(it, MONO, size) + (28 if round_ else 18)
        if cx > x and cx + tw > x + maxw:
            cx, cy = x, cy + h + gap
        r = h / 2 if round_ else 3
        page.add(f'<rect x="{cx:.1f}" y="{cy:.1f}" width="{tw:.1f}" height="{h}" rx="{r}" fill="none" stroke="{BORDER}"/>')
        page.text(cx + tw / 2, cy + h / 2 + size * 0.36, it, MONO, size, MUTED, "middle")
        cx += tw + gap
    return cy + h - y


def paragraph(page, x, y, s, font, size, fill, maxw, lh, anchor="start"):
    for i, line in enumerate(wrap(s, font, size, maxw)):
        page.text(x, y + i * lh, line, font, size, fill, anchor)
    return len(wrap(s, font, size, maxw)) * lh


def centred_title(page, y, title, sub=None, size=54):
    page.text(W / 2, y, title, SERIF, size, INK, "middle")
    if sub:
        return paragraph(page, W / 2, y + 44, sub, SANS, 15, MUTED, 470, 24, "middle") + 44
    return 0


def write(name, svg):
    with open(os.path.join(OUT, name), "w", encoding="utf-8") as f:
        f.write(svg)


# ---------------------------------------------------------------- hero

def hero():
    p = Page(W)
    p.css.append(FADE_CSS + ".d1{animation-delay:.06s}.d2{animation-delay:.16s}.d3{animation-delay:.26s}"
                 ".d4{animation-delay:.36s}@keyframes bob{0%,100%{transform:none}50%{transform:translateY(4px)}}"
                 ".bob{animation:bob 2.4s ease-in-out infinite}")
    navbar(p, None, 1 / 9)
    p.text(W / 2, 300, "What you put into words,", SERIF, 84, INK, "middle", cls="rise d1")
    total, spans = p.runs(W / 2 - 9, 372, [("// ", MONO_I, 27, "#b9bbc0", 0),
                                            ("I put into code.", MONO_I, 27, MUTED, 0)], "middle", cls="rise d2")
    end = spans[-1][0] + spans[-1][1]
    p.add(f'<g class="rise d2"><rect class="blink" x="{end + 8:.1f}" y="348" width="10" height="27" fill="{RUST}"/></g>')
    for i, line in enumerate(["Full-Stack Software Engineer. I build web and mobile systems",
                              "for government, enterprise and consumer clients."]):
        p.text(W / 2, 444 + i * 27, line, SANS, 17, MUTED, "middle", cls="rise d3")
    p.add('<g class="rise d4"><g class="bob">')
    p.text(W / 2, 560, "SCROLL", SANS, 11.5, FAINT, "middle", ls=2.4)
    p.add("</g></g>")
    sheet(p, 640)
    return p.render("What you put into words, // I put into code. Tyrel Cruz, Full-Stack Software Engineer.")


def pill(label, primary):
    size, h = 13.5, 44
    w = width(label, MONO, size) + 52
    p = Page(round(w))
    if primary:
        p.add(f'<rect width="{w:.0f}" height="{h}" rx="{h / 2}" fill="{RUST}"/>')
        p.text(w / 2, h / 2 + 4.8, label, MONO, size, "#fff4ea", "middle")
    else:
        p.add(f'<rect x="0.5" y="0.5" width="{w - 1:.0f}" height="{h - 1}" rx="{(h - 1) / 2}" fill="{PAPER}" stroke="{BORDER}"/>')
        p.text(w / 2, h / 2 + 4.8, label, MONO, size, MUTED, "middle")
    p.h = h
    return p.render(label)


def navchip(label):
    size, h = 11, 34
    w = width(label, MONO_M, size, 2) + 34
    p = Page(round(w))
    p.add(f'<rect x="0.5" y="0.5" width="{w - 1:.0f}" height="{h - 1}" rx="{(h - 1) / 2}" fill="{PAPER}" stroke="{BORDER}"/>')
    p.text(w / 2, h / 2 + 4, label, MONO_M, size, MUTED, "middle", ls=2)
    p.h = h
    return p.render(label)


# ---------------------------------------------------------------- about

EXPERIENCE = [
    dict(role="Full-Stack Software Engineer", meta="MEC Networks Corporation  ·  Nov 2025 — Present",
         metrics=[("70%", "less manual deployment effort"), ("90%", "fewer build failures"),
                  ("40%", "fewer duplicate reports")],
         timing=True,
         highlights=["Automated CI/CD across three codebases — Laravel, React and mobile — with GitHub Actions and Docker Compose.",
                     "Built a workforce operations platform in Laravel and React, with real-time updates over self-hosted Laravel Reverb and multi-queue jobs across 5+ third-party integrations.",
                     "Maintained internal Laravel, React and MySQL applications with JWT auth, role-based access control and OTP multi-factor sign-in."],
         tech=["React", "TypeScript", "Laravel", "Flutter", "Docker"]),
    dict(role="Co-Founder & Lead Software Engineer", meta="QuadSync Technologies / Freelance  ·  March 2026 — Nov 2026",
         highlights=["Delivered full-stack platforms across government, enterprise and consumer domains.",
                     "Ran production infrastructure on Docker Compose, Nginx, PHP-FPM, Redis, MySQL and Laravel queue workers."],
         tech=["React", "Express.js", "MongoDB", "Node.js", "Laravel", "Flutter", "Docker"]),
    dict(role="BS Information Technology", meta="National University Manila  ·  Aug 2022 — Sept 2026",
         metrics=[("3.78", "GWA"), ("Magna Cum Laude", "Latin honours")],
         highlights=["Specialisation in Mobile and Web Applications."],
         tech=["Software Engineering", "Operating Systems", "Database Systems", "Artificial Intelligence"]),
]


def about():
    p = Page(W)
    p.css.append(FADE_CSS)
    navbar(p, SECTIONS[0], 2 / 9)
    y = 150 + centred_title(p, 150, "The short version.",
                            "Roles, the work behind them and where it was all learned — laid out to skim.")
    dot_x, x, cw = 190, 222, 640
    y += 70
    first = y
    line_at = len(p.body)
    for ex in EXPERIENCE:
        p.add(f'<circle cx="{dot_x}" cy="{y - 9}" r="5" fill="{RUST}"/>')
        p.text(x, y, ex["role"], SERIF, 32, INK)
        p.text(x, y + 30, ex["meta"], MONO, 13, MUTED)
        y += 30
        if ex.get("metrics"):
            y += 58
            for i, (v, label) in enumerate(ex["metrics"]):
                mx = x + i * 224
                p.text(mx, y, v, SERIF, 46 if len(v) < 6 else 34, RUST)
                p.text(mx, y + 26, label, SANS, 13.5, MUTED)
            y += 26
        if ex.get("timing"):
            y += 28
            p.add(f'<rect x="{x}" y="{y}" width="{cw}" height="68" rx="8" fill="{CARD}" stroke="{BORDER}"/>')
            p.text(x + 18, y + 29, "DEPLOY TIME", MONO, 11.5, MUTED, ls=2.2)
            w4 = p.text(x + cw - 18, y + 29, "4min", MONO, 11.5, RUST, "end")
            w10 = p.text(x + cw - 18 - w4 - 7, y + 29, "10min", MONO, 11.5, FAINT, "end")
            sx = x + cw - 18 - w4 - 7 - w10
            p.add(f'<line x1="{sx:.1f}" y1="{y + 25}" x2="{sx + w10:.1f}" y2="{y + 25}" stroke="{FAINT}"/>')
            p.add(f'<rect x="{x + 18}" y="{y + 45}" width="{cw - 36}" height="5" rx="2.5" fill="#ebe8e3"/>'
                  f'<rect class="grow" x="{x + 18}" y="{y + 45}" width="{(cw - 36) * 0.4:.0f}" height="5" rx="2.5" fill="{RUST}"/>')
            y += 68
        y += 18
        for line in ex["highlights"]:
            y += 6 + paragraph(p, x, y + 18, line, SANS, 15, MUTED, cw, 24)
        y += 18
        y += tags(p, x, y, ex["tech"], cw, round_=False, size=11, h=24, gap=7)
        last = y
        y += 74
    p.body.insert(line_at, f'<line x1="{dot_x}" y1="{first - 9}" x2="{dot_x}" y2="{last}" stroke="{BORDER}"/>')
    sheet(p, y - 10)
    return p.render("About: Full-Stack Software Engineer at MEC Networks; Co-Founder at QuadSync; BS IT, Magna Cum Laude.")


# ---------------------------------------------------------------- selected work

PROJECTS = [
    dict(key="quadshield", name="Quadshield", client="Philippine National Police", period="APR 2026 — SEPT 2026",
         summary="Real-time emergency dispatch: Laravel Reverb WebSockets for call signalling, LiveKit WebRTC for sub-second two-way voice, an ESP32 IoT panic button with captive-portal provisioning, and an offline-first Flutter app backed by a local queue — validated with automated testing.",
         tech=["Laravel", "Reverb", "WebRTC", "Flutter", "ESP32", "C++"], href="pnpinfanta.com",
         figure=("Sub-second", "TWO-WAY VOICE"), img="pnpsumbungan.png"),
    dict(key="buzzmap", name="BuzzMap", client="Quezon City Epidemiology and Surveillance Division", period="MAR 2025 — SEPT 2025",
         summary="Crowdsourced dengue prevention across 142 barangays and 380+ active users, with Google GenAI prescriptive recommendations and geospatial risk scoring for early outbreak detection.",
         tech=["Flutter", "React", "Tailwind CSS", "Google GenAI"], href="buzzmap-qcesd.com",
         figure=("142", "BARANGAYS COVERED"), img="Buzzmap.png"),
    dict(key="mysheraviary", name="MySher Aviary", client="Quezon City · Freelance", period="AUG 2026 — OCT 2026",
         summary="A bird marketplace and management platform: customer-facing features, REST APIs, backend services and database workflows on React, Express.js, Supabase and PostgreSQL — built through feature branches and pull requests, with AI-assisted code reviewed, debugged and tested by hand.",
         tech=["React", "Express.js", "Supabase", "PostgreSQL"], href="mysheraviary.com", img="mysheraviary.png"),
    dict(key="streams", name="Streams", client="MEC Networks Corporation", period="MAR 2026 — NOV 2026",
         summary="Field-service dispatch for three clients, co-developed in a four-person team on Laravel 12, React 19 and Flutter: GPS tracking, service reports, client sign-off and billing across 12 role types and ~190 endpoints, with real-time collaborative reporting over Reverb and five enterprise systems synced through fault-tolerant queues.",
         tech=["Laravel 12", "React 19", "TypeScript", "Flutter", "Reverb", "Redis", "Docker"],
         figure=("~190", "API ENDPOINTS, 12 ROLE TYPES"), img="streams_banner.png"),
    dict(key="afprotrack", name="AFProTrack", client="Armed Forces of the Philippines", period="SEPT 2025 — JAN 2026",
         summary="Trainee management for the Philippine Army's Training and Doctrine Command: a Flutter app on 24 JWT-authenticated APIs over Node.js and MongoDB — role-gated onboarding, readiness and rank-progression dashboards, certificate uploads — and work on the React 19 admin console behind 89 endpoints and 44-permission RBAC.",
         tech=["Flutter", "Node.js", "MongoDB", "React 19", "Redux Toolkit", "Cloudinary"],
         figure=("24", "JWT-AUTHENTICATED APIS"), img="Afprotrack.png"),
    dict(key="kabis", name="KaBiS", client="Personal project", period="SEPT 2026 — OCT 2026",
         summary="Board-exam review in TypeScript on React 19, Express, MySQL and Docker: mock exams built to the official Tables of Specifications, an LLM ingestion pipeline gated by server-side validation, ~46% cross-source overlap deduplicated, and question variants re-randomised on every attempt.",
         tech=["TypeScript", "React 19", "Express", "MySQL", "Docker", "Vercel"], href="kabis-review.vercel.app",
         figure=("~46%", "CROSS-SOURCE OVERLAP REMOVED"), img="Kabis.png"),
    dict(key="dalago", name="DalaGO", client="Infanta, Quezon Province", period="APR 2026 — NOV 2026",
         summary="Multi-sided food delivery marketplace on Laravel 12 and Flutter, serving customer, rider and merchant workflows. Device-aware image caching cut a 9.25MB asset load to 1.27MB.",
         tech=["Laravel 12", "Flutter", "Sanctum", "REST APIs"],
         figure=("9.25MB → 1.27MB", "ASSET LOAD PER DEVICE"), img="dalago.png"),
]


def record_index(p, y, current):
    """The ledger's left column: every project, the current one in ink and underlined."""
    p.text(70, y, "THE RECORD", SANS_M, 11.5, MUTED, ls=2.6)
    for i, pr in enumerate(PROJECTS):
        iy = y + 52 + i * 50
        on = i == current
        p.text(70, iy, f"{i + 1:02d}", MONO, 10.5, MUTED if on else "#c3c5c9")
        nw = p.text(96, iy, pr["name"], SERIF, 25, "#3d3f44" if on else "#b4b6bb")
        if on:
            p.add(f'<line x1="70" y1="{iy + 13}" x2="{96 + max(nw, 130):.0f}" y2="{iy + 13}" stroke="{FAINT}"/>')


def work_intro():
    p = Page(W)
    p.css.append(FADE_CSS)
    navbar(p, SECTIONS[1], 3 / 9)
    p.text(W / 2, 205, "Shipped, and still running.", SERIF, 60, INK, "middle", cls="rise")
    p.text(W / 2, 252, "Seven platforms, three of them for government. Click any page for the live site.",
           SANS, 15, MUTED, "middle")
    sheet(p, 310)
    return p.render("Selected work: Shipped, and still running.")


def work(i):
    pr = PROJECTS[i]
    p = Page(W)
    p.css.append(FADE_CSS)
    navbar(p, SECTIONS[1], 3 / 9)
    top = 150
    record_index(p, top, i)
    x, cw = 330, 610
    p.runs(x, top + 6, [(f"{i + 1:02d}", MONO, 12, MUTED, 2), ("  /  ", MONO, 12, "#c3c5c9", 1),
                        (f"{len(PROJECTS):02d}", MONO, 12, "#c3c5c9", 2), ("   ·   ", MONO, 12, "#c3c5c9", 0),
                        (pr["period"], MONO, 12, MUTED, 2.2)])
    p.text(x - 2, top + 82, pr["name"], SERIF, 76, "#2f3136")
    y = top + 120
    p.text(x, y, pr["client"], SANS, 17, MUTED)
    y += 46
    y += paragraph(p, x, y, pr["summary"], SANS, 16, MUTED, cw, 26)
    if pr.get("figure"):
        v, label = pr["figure"]
        y += 18
        p.add(f'<rect x="{x}" y="{y}" width="2" height="62" fill="{RUST}"/>')
        p.text(x + 18, y + 34, v, SERIF, 36, RUST)
        p.text(x + 18, y + 56, label, SANS_M, 11.5, MUTED, ls=2.2)
        y += 62
    y += 28
    y += tags(p, x, y, pr["tech"], cw)
    y += 44
    if pr.get("href"):
        lw = p.text(x, y, f'{pr["href"]} →', SANS, 15, RUST)
        p.add(f'<line x1="{x}" y1="{y + 5}" x2="{x + lw:.1f}" y2="{y + 5}" stroke="{RUST}"/>')
    else:
        p.text(x, y, "Internal system — no public address", SANS, 14, FAINT)
    y += 36
    ih = round(cw * 942 / 1670)
    p.defs.append(f'<clipPath id="shot"><rect x="{x}" y="{y}" width="{cw}" height="{ih}" rx="10"/></clipPath>'
                  '<filter id="soft" x="-10%" y="-10%" width="120%" height="130%"><feDropShadow dx="0" dy="14" '
                  'stdDeviation="16" flood-color="#2a2016" flood-opacity="0.13"/></filter>')
    p.add(f'<rect x="{x}" y="{y}" width="{cw}" height="{ih}" rx="10" fill="{CARD}" filter="url(#soft)"/>'
          f'<image href="{jpeg_uri(pr["img"], 1200)}" x="{x}" y="{y}" width="{cw}" height="{ih}" '
          f'preserveAspectRatio="xMidYMid slice" clip-path="url(#shot)"/>')
    y += ih + 56
    sheet(p, max(y, top + 52 + 7 * 50 + 60))
    return p.render(f'{pr["name"]} — {pr["client"]}. {pr["summary"]}')


ALSO = [("Coast2Cart", "coast2cart-frontend.vercel.app", "Coast2Cart.png",
         "Seafood and coastal souvenir marketplace — MongoDB, Express, React, Node.js."),
        ("Optima", "internal", "Optima.png",
         "Support ticketing dashboard with AI-assisted search — Laravel, React, MySQL, Docker.")]


def work_also():
    p = Page(W)
    navbar(p, SECTIONS[1], 3 / 9)
    top = 150
    record_index(p, top, -1)
    x, cw = 330, 610
    p.text(x, top + 6, "ALSO SHIPPED", SANS_M, 11.5, MUTED, ls=2.6)
    y = top + 28
    for name, url, img, note in ALSO:
        p.add(f'<line x1="{x}" y1="{y}" x2="{x + cw}" y2="{y}" stroke="{BORDER}"/>')
        p.text(x, y + 38, name, SERIF, 26, INK)
        p.text(x + cw, y + 36, url, MONO, 11, FAINT, "end")
        y += 38 + paragraph(p, x, y + 64, note, SANS, 14, MUTED, cw, 22) + 46
    p.add(f'<line x1="{x}" y1="{y}" x2="{x + cw}" y2="{y}" stroke="{BORDER}"/>')
    y += 30
    tw = (cw - 20) / 2
    th = round(tw * 942 / 1670)
    for k, (name, _, img, _) in enumerate(ALSO):
        tx = x + k * (tw + 20)
        p.defs.append(f'<clipPath id="t{k}"><rect x="{tx:.1f}" y="{y}" width="{tw:.1f}" height="{th}" rx="8"/></clipPath>')
        p.add(f'<image href="{jpeg_uri(img, 640)}" x="{tx:.1f}" y="{y}" width="{tw:.1f}" height="{th}" '
              f'preserveAspectRatio="xMidYMid slice" clip-path="url(#t{k})"/>'
              f'<rect x="{tx:.1f}" y="{y}" width="{tw:.1f}" height="{th}" rx="8" fill="none" stroke="{HAIR}"/>')
    y += th + 56
    sheet(p, max(y, top + 52 + 7 * 50 + 60))
    return p.render("Also shipped: Coast2Cart and Optima.")


# ---------------------------------------------------------------- on air

def onair():
    p = Page(W)
    n = 6
    cycle = n * 2.6
    p.css.append(FADE_CSS + "".join(
        f"@keyframes fr{k}{{0%{{opacity:0}}{k * 100 / n:.2f}%{{opacity:0}}{k * 100 / n + 3:.2f}%{{opacity:1}}"
        f"{(k + 1) * 100 / n:.2f}%{{opacity:1}}{(k + 1) * 100 / n + 3:.2f}%{{opacity:0}}100%{{opacity:0}}}}"
        f".fr{k}{{animation:fr{k} {cycle}s linear infinite}}" for k in range(1, n)))
    p.css.append(f".fr0{{animation:fr0 {cycle}s linear infinite}}@keyframes fr0{{0%,{100 / n:.2f}%{{opacity:1}}"
                 f"{100 / n + 3:.2f}%,97%{{opacity:0}}100%{{opacity:1}}}}"
                 "@keyframes pulse{0%,100%{transform:scale(1)}50%{transform:scale(1.07)}}"
                 ".pulse{transform-box:fill-box;transform-origin:center;animation:pulse 2s ease-in-out infinite}")
    navbar(p, SECTIONS[2], 4 / 9)
    x = 110
    p.text(x, 268, "ON AIR", MONO, 12, MUTED, ls=2.8)
    p.text(x - 1, 316, "It made the local news", SERIF, 40, INK)
    y = 352 + paragraph(p, x, 352, "Regional television announced the app across the province — what it is for, and "
                        "how residents can reach the station through it instead of waiting. It is in service today, "
                        "carrying real reports from the people of Infanta.", SANS, 15.5, MUTED, 410, 25)
    p.add(f'<rect x="{x}" y="{y + 4}" width="2" height="28" fill="{RUST}"/>')
    p.text(x + 16, y + 25, "Announced regionally. In citizens’ hands now.", SERIF, 22, RUST,
           extra=f'transform="translate({(y + 25) * 0.1944:.1f} 0) skewX(-11)"')
    p.text(x, y + 76, "Brigada News  ·  Infanta, Quezon", MONO, 11.5, FAINT, ls=1)

    # The phone, after the portfolio's: dark frame, black screen, the clip letterboxed in the middle.
    px, py, pw, ph = 640, 120, 300, 610
    p.defs.append('<filter id="phone" x="-30%" y="-10%" width="160%" height="125%"><feDropShadow dx="0" dy="24" '
                  'stdDeviation="26" flood-color="#2a2016" flood-opacity="0.16"/></filter>'
                  f'<clipPath id="vid"><rect x="{px + 10}" y="0" width="{pw - 20}" height="999"/></clipPath>')
    p.add(f'<rect x="{px - 4}" y="{py + 92}" width="4" height="28" rx="2" fill="#2b2b2b"/>'
          f'<rect x="{px - 4}" y="{py + 136}" width="4" height="48" rx="2" fill="#2b2b2b"/>'
          f'<rect x="{px + pw}" y="{py + 160}" width="4" height="66" rx="2" fill="#2b2b2b"/>'
          f'<rect x="{px}" y="{py}" width="{pw}" height="{ph}" rx="46" fill="#2b2b2b" filter="url(#phone)"/>'
          f'<rect x="{px + 9}" y="{py + 9}" width="{pw - 18}" height="{ph - 18}" rx="38" fill="#000"/>')
    p.text(px + 36, py + 40, "9:41", SANS_SB, 12.5, "#fff")
    p.add("".join(f'<rect x="{px + pw - 66 + k * 4}" y="{py + 36 - (k + 1) * 2.4:.1f}" width="2.6" height="{(k + 1) * 2.4:.1f}" rx="0.6" fill="#fff"/>'
                  for k in range(4))
          + f'<rect x="{px + pw - 46}" y="{py + 29}" width="20" height="10" rx="3" fill="none" stroke="#fff" stroke-opacity=".5"/>'
            f'<rect x="{px + pw - 44}" y="{py + 31}" width="16" height="6" rx="1.5" fill="#fff"/>'
          + f'<line x1="{px + 9}" y1="{py + 56}" x2="{px + pw - 9}" y2="{py + 56}" stroke="#1c1c1e"/>')
    vw = pw - 18
    vh = round(vw * 9 / 16)
    vx, vy = px + 9, py + ph / 2 - vh / 2
    for k in range(n):
        p.add(f'<image class="fr{k}" href="{file_uri(f"assets/src/news/frame{k + 1}.jpg")}" x="{vx}" y="{vy:.0f}" '
              f'width="{vw}" height="{vh}" preserveAspectRatio="xMidYMid slice"/>')
    cx, cy = vx + vw / 2, vy + vh / 2
    p.add(f'<g class="pulse"><circle cx="{cx}" cy="{cy}" r="25" fill="#ffe500"/>'
          f'<path d="M{cx - 6} {cy - 9}L{cx + 10} {cy}L{cx - 6} {cy + 9}Z" fill="#111"/></g>'
          f'<rect x="{vx + vw - 50}" y="{vy + 10}" width="40" height="19" rx="9.5" fill="#000" fill-opacity=".55"/>')
    p.text(vx + vw - 30, vy + 23.5, "2:28", SANS_M, 11, "#fff", "middle")
    bw = width("Watch fullscreen", SANS_M, 12) + 50
    bx, by = cx - bw / 2, vy + vh + 22
    p.add(f'<rect x="{bx:.1f}" y="{by:.0f}" width="{bw:.1f}" height="32" rx="16" fill="#1c1c1e" stroke="#3a3a3c"/>'
          f'<path d="M{bx + 18} {by + 13}v-3h3M{bx + 26} {by + 10}h3v3M{bx + 29} {by + 19}v3h-3M{bx + 21} {by + 22}h-3v-3" '
          f'fill="none" stroke="#fff" stroke-width="1.3"/>')
    p.text(bx + 36, by + 20.5, "Watch fullscreen", SANS_M, 12, "#fff")
    sheet(p, py + ph + 70)
    return p.render("On air: It made the local news. Regional television announced the Quadshield app across the province.")


# ---------------------------------------------------------------- how it works

STEPS = [
    ("01", "Your idea is the blueprint.", "Tell me what you have in mind. That is all it takes to start.",
     "#faf9f7", "#101214", "#646972", "#a54a28"),
    ("02", "We shape it together.", "A short call, an honest estimate, and a scope you can actually read.",
     "#161513", "#faf9f7", "#9a968e", "#d2733f"),
    ("03", "You watch it get built.", "Something working in your hands every week, rather than a status report.",
     "#b5470a", "#fff4ea", "#fbe4d3", "#ffd9b8"),
    ("04", "It ships, and it keeps working.", "Launched, watched, and someone to call when it matters.",
     "#b7fed4", "#10231a", "#3f6553", "#0b6b45"),
]


def how():
    p = Page(W)
    p.css.append(FADE_CSS + "".join(f".s{k}{{animation-delay:{0.1 + k * 0.15:.2f}s}}" for k in range(4)))
    navbar(p, SECTIONS[3], 5 / 9)
    p.text(W / 2, 168, "From idea to shipped.", SERIF, 56, INK, "middle")
    gx, gy, gap = 44, 222, 16
    cw, ch = (W - 2 * gx - gap) / 2, 270
    for k, (num, head, body, bg, fg, muted, accent) in enumerate(STEPS):
        x = gx + (k % 2) * (cw + gap)
        y = gy + (k // 2) * (ch + gap)
        p.add(f'<g class="rise s{k}">')
        stroke = f' stroke="{BORDER}"' if k == 0 else ""
        p.add(f'<rect x="{x:.1f}" y="{y}" width="{cw:.1f}" height="{ch}" rx="24" fill="{bg}"{stroke}/>')
        p.text(x + cw / 2, y + 74, num, MONO, 13, accent, "middle", ls=2.6)
        lines = wrap(head, SERIF, 38, cw - 60)
        for j, line in enumerate(lines):
            p.text(x + cw / 2, y + 130 + j * 40, line, SERIF, 38, fg, "middle")
        paragraph(p, x + cw / 2, y + 130 + len(lines) * 40 + 14, body, SANS, 15, muted, cw - 110, 24, "middle")
        p.add("</g>")
    sheet(p, gy + 2 * ch + gap + 46)
    return p.render("How it works: From idea to shipped, in four steps.")


# ---------------------------------------------------------------- interview

def interview():
    p = Page(W)
    p.css.append(FADE_CSS)
    navbar(p, SECTIONS[4], 6 / 9)
    p.text(W / 2, 170, "Put me through your", SERIF, 50, INK, "middle")
    p.text(W / 2, 222, "hiring process.", SERIF, 50, INK, "middle")
    sub = paragraph(p, W / 2, 268, "The three stages you would run anyway — screening, interview, decision. Every "
                    "answer comes from real work, and anything I have not done yet is shown, not hidden.",
                    SANS, 15, MUTED, 520, 24, "middle")

    # The stage tracker: applied is done, screening is up next.
    x, cw, y = 150, 700, 268 + sub + 26
    p.add(f'<rect x="{x}" y="{y}" width="{cw}" height="98" rx="16" fill="{PAPER}" stroke="{BORDER}"/>')
    stages = [("APPLIED", "CV on file"), ("SCREENED", "Stage 1"), ("INTERVIEWED", "Stage 2"), ("DECISION", "Stage 3")]
    step = cw / 4
    for k in range(3):
        p.add(f'<line x1="{x + step * (k + .5) + 13:.0f}" y1="{y + 30}" x2="{x + step * (k + 1.5) - 13:.0f}" y2="{y + 30}" stroke="{BORDER}"/>')
    for k, (label, sub) in enumerate(stages):
        cx = x + step * (k + .5)
        if k == 0:
            p.add(f'<circle cx="{cx}" cy="{y + 30}" r="12" fill="{RUST}"/>'
                  f'<path d="M{cx - 5} {y + 30}l3.5 3.5l6.5-7" fill="none" stroke="#fff" stroke-width="1.6"/>')
        else:
            p.add(f'<circle cx="{cx}" cy="{y + 30}" r="11.5" fill="{PAPER}" stroke="{INK if k == 1 else BORDER}"/>')
            p.text(cx, y + 34, str(k + 1), MONO, 10.5, INK if k == 1 else FAINT, "middle")
        p.text(cx, y + 64, label, MONO_M, 11, INK if k <= 1 else MUTED, "middle", ls=1.8)
        p.text(cx, y + 83, sub, SANS, 11.5, MUTED, "middle")

    # The candidate card.
    y += 98 + 78
    p.text(x, y, "Your call.", SERIF, 46, INK)
    p.text(x, y + 38, "Everything you have seen, on one card. If it is a yes, the invite is already written.", SANS, 15, MUTED)
    y += 70
    p.add(f'<rect x="{x}" y="{y}" width="{cw}" height="360" rx="16" fill="{CARD}" stroke="{BORDER}"/>')
    ix = x + 34
    p.text(ix, y + 46, "CANDIDATE", MONO, 11, MUTED, ls=2.2)
    p.text(ix, y + 98, "Tyrel Cruz", SERIF, 46, INK)
    p.text(ix, y + 128, "Full-Stack Software Engineer  ·  Magna Cum Laude, National University Manila", MONO, 12, MUTED)
    p.add(f'<line x1="{ix}" y1="{y + 156}" x2="{x + cw - 34}" y2="{y + 156}" stroke="{HAIR}"/>')
    cols = [("SCREENING", "—", "run it on the portfolio"), ("INTERVIEW", "8/8", "answered below"),
            ("GAPS", "—", "shown, not hidden")]
    for k, (label, value, sub) in enumerate(cols):
        cx = ix + k * 220
        p.text(cx, y + 190, label, MONO, 11, MUTED, ls=2.2)
        p.text(cx, y + 230, value, SERIF, 36, INK)
        p.text(cx, y + 254, sub, SANS, 13, MUTED)
    p.add(f'<line x1="{ix}" y1="{y + 276}" x2="{x + cw - 34}" y2="{y + 276}" stroke="{HAIR}"/>')
    bw1 = width("Advance to interview", MONO, 13) + 48
    p.add(f'<rect x="{ix}" y="{y + 296}" width="{bw1:.0f}" height="40" rx="20" fill="{RUST}"/>')
    p.text(ix + bw1 / 2, y + 320.5, "Advance to interview", MONO, 13, "#fff4ea", "middle")
    bw2 = width("Not right now", MONO, 13) + 48
    p.add(f'<rect x="{ix + bw1 + 12:.0f}" y="{y + 296}" width="{bw2:.0f}" height="40" rx="20" fill="none" stroke="{BORDER}"/>')
    p.text(ix + bw1 + 12 + bw2 / 2, y + 320.5, "Not right now", MONO, 13, MUTED, "middle")
    sheet(p, y + 360 + 60)
    return p.render("Interview: Put me through your hiring process. Candidate card for Tyrel Cruz.")


# ---------------------------------------------------------------- stack

STACK = [
    ("FRONTEND", ["Next.js", "React", "TypeScript", "JavaScript", "HTML", "CSS", "Tailwind CSS", "Flutter"]),
    ("BACKEND & APIS", ["PHP", "Laravel", "Node.js", "Express.js", "REST APIs", "WebSockets", "WebRTC", "JWT", "Laravel Sanctum"]),
    ("DATABASES & CLOUD", ["PostgreSQL", "Supabase", "MySQL", "MongoDB", "Redis"]),
    ("DEVELOPMENT & DEVOPS", ["Git", "GitHub", "GitHub Actions", "Pull Requests", "Code Review", "CI/CD", "Docker",
                              "Docker Compose", "Nginx", "Linux", "Bash", "Postman"]),
    ("TESTING & QUALITY", ["Automated Testing", "API Testing", "Debugging", "Performance Optimization"]),
    ("AI-ASSISTED DEVELOPMENT", ["Claude", "Cursor", "Google GenAI"]),
    ("IOT & OTHER", ["ESP32", "C++"]),
]


def stack():
    p = Page(W)
    navbar(p, SECTIONS[5], 7 / 9)
    p.text(W / 2, 168, "The stack behind them.", SERIF, 56, INK, "middle")
    p.text(W / 2, 210, "Grouped the way the CV groups it — by which end of the system each belongs to.", SANS, 15, MUTED, "middle")
    x, tx, right = 90, 340, 910
    y = 262
    for label, items in STACK:
        p.add(f'<line x1="{x}" y1="{y}" x2="{right}" y2="{y}" stroke="{BORDER}"/>')
        h = tags(p, tx, y + 22, items, right - tx, round_=False, size=11.5, h=26, gap=8)
        p.text(x, y + 40, label, MONO_M, 11, MUTED, ls=2.2)
        y += h + 44
    p.add(f'<line x1="{x}" y1="{y}" x2="{right}" y2="{y}" stroke="{BORDER}"/>')
    sheet(p, y + 60)
    return p.render("Stack: " + "; ".join(f"{l.title()}: {', '.join(i)}" for l, i in STACK))


def activity():
    p = Page(W)
    navbar(p, SECTIONS[6], 8 / 9)
    p.text(W / 2, 168, "The commit log.", SERIF, 56, INK, "middle")
    p.text(W / 2, 210, "Live from GitHub, updated as I ship.", SANS, 15, MUTED, "middle")
    sheet(p, 256)
    return p.render("Activity: The commit log.")


# ---------------------------------------------------------------- contact

WORDS = ["build me …", "develop me …", "work with me …", "hire me …"]


def contact():
    p = Page(W)
    navbar(p, SECTIONS[7], 1.0)
    # The plumb line, swinging from where it hangs.
    p.css.append("@keyframes swing{0%,100%{transform:rotate(-3.5deg)}50%{transform:rotate(3.5deg)}}"
                 ".swing{transform-origin:500px 92px;animation:swing 7s ease-in-out infinite}")
    p.add(f'<g class="swing"><line x1="500" y1="92" x2="500" y2="168" stroke="#c9cbcf" stroke-width="1.2"/>'
          f'<rect x="495.5" y="164" width="9" height="15" rx="4.5" fill="{INK}"/></g>')
    p.text(W / 2, 214, "THE NEXT STEP", SANS_M, 11.5, MUTED, "middle", ls=2.6)
    p.text(W / 2, 320, "WRITE TO ME", SANS_M, 11.5, MUTED, "middle", ls=2.6)

    # "Hey Tyrel," then each ending typed out, held, and cleared in turn.
    size, base_y = 68, 410
    lead = "Hey Tyrel, "
    lw = width(lead, SERIF, size)
    longest = max(width(w, SERIF, size) for w in WORDS)
    x0 = W / 2 - (lw + longest) / 2
    p.text(x0, base_y, lead, SERIF, size, INK)
    slot, type_t, hold = 4.0, 0.07, 1.6
    cycle = slot * len(WORDS)
    css = []
    for wi, word in enumerate(WORDS):
        start = wi * slot
        last = wi == len(WORDS) - 1
        for ci in range(len(word)):
            on = start + ci * type_t
            off = start + len(word) * type_t + hold + (len(word) - 1 - ci) * 0.035  # deleted back to front
            a, b, c = (on / cycle * 100, off / cycle * 100, min((off + 0.02) / cycle * 100, 99.9))
            name = f"w{wi}c{ci}"
            css.append(f"@keyframes {name}{{0%,{a:.2f}%{{opacity:0}}{a + .01:.2f}%,{b:.2f}%{{opacity:1}}"
                       f"{c:.2f}%,100%{{opacity:0}}}}.{name}{{opacity:{1 if last else 0};animation:{name} {cycle}s linear infinite}}")
        p.text(x0 + lw, base_y, word, SERIF, size, "#b9bbbf", char_cls=lambda ci, wi=wi: f"w{wi}c{ci}")
    p.css.append("".join(css))
    p.runs(W / 2, 470, [(EMAIL, MONO, 14, RUST, 0.5)], "middle")
    ew = width(EMAIL, MONO, 14, 0.5)
    p.add(f'<line x1="{W / 2 - ew / 2:.1f}" y1="476" x2="{W / 2 + ew / 2:.1f}" y2="476" stroke="{RUST}"/>')
    foot = [("© 2026 Tyrel Cruz", SANS, 13.5, MUTED, 0), ("       Portfolio", SANS, 13.5, MUTED, 0),
            ("       LinkedIn", SANS, 13.5, MUTED, 0), ("       GitHub", SANS, 13.5, MUTED, 0)]
    p.runs(W / 2, 604, foot, "middle")
    sheet(p, 650)
    return p.render(f"Contact: Hey Tyrel, hire me. {EMAIL}")


# ---------------------------------------------------------------- build

NAV = [("about", "01 · ABOUT"), ("work", "02 · WORK"), ("onair", "03 · ON AIR"), ("how", "04 · PROCESS"),
       ("interview", "05 · INTERVIEW"), ("stack", "06 · STACK"), ("activity", "07 · ACTIVITY"), ("contact", "08 · CONTACT")]
BUTTONS = {"start": ("Start a project →", True), "portfolio": ("Portfolio →", False),
           "linkedin": ("LinkedIn →", False), "interview": ("Interview me →", False)}


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
    SERIF = Font(GARAMOND, SANS)

    pages = {"hero.svg": hero(), "about.svg": about(), "work-intro.svg": work_intro(), "work-also.svg": work_also(),
             "onair.svg": onair(), "how.svg": how(), "interview.svg": interview(), "stack.svg": stack(),
             "activity.svg": activity(), "contact.svg": contact()}
    for i, pr in enumerate(PROJECTS):
        pages[f"work-{pr['key']}.svg"] = work(i)
    for key, (label, primary) in BUTTONS.items():
        pages[f"btn-{key}.svg"] = pill(label, primary)
    for key, label in NAV:
        pages[f"nav-{key}.svg"] = navchip(label)
    for name, svg in pages.items():
        write(name, svg)
    print(f"Built {len(pages)} pages in assets/")


if __name__ == "__main__":
    main()
