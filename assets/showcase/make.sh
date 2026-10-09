#!/usr/bin/env bash
# Records the portfolio's showcase sections and turns each into one animated card per theme:
# the section header (from assets/build.py) stacked on the recording, corners rounded.
# Animated WebP rather than GIF: it keeps the transparent corners at a fraction of the size.
#
#   python3 assets/build.py            # writes the headers to assets/src/headers/
#   (serve the portfolio build on :4321)
#   bash assets/showcase/make.sh       # records, then encodes assets/showcase/<section>-<theme>.webp
#
# Needs node, Google Chrome and ffmpeg (FFMPEG=/path/to/ffmpeg to override). Recordings are cached in
# $FRAMES; delete a folder there to record it again. Scroll ranges are the section offsets at a
# 1280×800 viewport — re-measure them if the portfolio changes.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(dirname "$(dirname "$HERE")")"
FRAMES="${FRAMES:-$HERE/.frames}"
FFMPEG="${FFMPEG:-ffmpeg}"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
W=860

record() { # name theme mode args...
  local dir="$FRAMES/$1-$2"
  [ -d "$dir" ] && [ -n "$(ls -A "$dir")" ] && return
  # Only the sections without device mockups get their white cards darkened.
  local fix=""; case "$1" in ai-*) fix=1 ;; esac
  THEME="$2" FIXWHITE="$fix" node "$HERE/record.mjs" "$3" "$dir" "${@:4}"
}

header_png() { # name theme → $FRAMES/<name>-<theme>-header.png, sized exactly to the SVG
  local svg="$ROOT/assets/src/headers/$1-$2.svg" out="$FRAMES/$1-$2-header" h
  h=$(grep -oE 'height="[0-9]+"' "$svg" | head -1 | grep -oE '[0-9]+')
  printf '<html><body style="margin:0"><img src="file://%s" width="%s"></body></html>' "$svg" "$W" > "$out.html"
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars --allow-file-access-from-files \
    --window-size="$W,$h" --screenshot="$out.png" "file://$out.html" 2>/dev/null
  echo "$h"
}

card() { # name theme first count every crop
  local name=$1 theme=$2 first=$3 count=$4 every=$5 crop=$6 hh r=18 paper edge
  if [ "$theme" = dark ]; then paper=0x0d1117; edge="48,54,61"; else paper=0xfaf9f7; edge="227,224,218"; fi
  IFS=, read -r er eg eb <<< "$edge"
  hh=$(header_png "$name" "$theme")
  # Rounded corners: transparent outside the radius, a hairline just inside it.
  local d="hypot(max(0,max($r-X,X-(W-1-$r))),max(0,max($r-Y,Y-(H-1-$r))))"
  "$FFMPEG" -hide_banner -loglevel error -y -framerate 12 -start_number "$first" -i "$FRAMES/$name-$theme/f%04d.jpg" \
    -i "$FRAMES/$name-$theme-header.png" -frames:v "$count" -filter_complex "
      [0:v]select='not(mod(n\,$every))',setpts=N/12/TB,crop=$crop,scale=$W:-2:flags=lanczos,
           pad=$W:ih+$hh:0:$hh:color=$paper[v];
      [v][1:v]overlay=0:0,format=rgba,
           geq=r='if(gt($d,$r-1.3),$er,r(X,Y))':g='if(gt($d,$r-1.3),$eg,g(X,Y))':b='if(gt($d,$r-1.3),$eb,b(X,Y))':a='if(gt($d,$r),0,255)',
           format=yuva420p" \
    -c:v libwebp_anim -lossless 0 -quality 82 -compression_level 6 -loop 0 "$HERE/$name-$theme.webp"
  echo "$name-$theme.webp  $(du -h "$HERE/$name-$theme.webp" | cut -f1)"
}

mkdir -p "$FRAMES"
for theme in light dark; do
  record ai-solutions    "$theme" scroll 6452 20012 160
  record ai-game         "$theme" doodle 62332
  record web-development "$theme" scroll 20012 28316 120
  record app-development "$theme" scroll 28316 55836 260

  card ai-solutions    "$theme" 6 160 1 "1280:736:0:64"
  card ai-game         "$theme" 0 999 1 "1000:680:140:120"
  card web-development "$theme" 5 110 1 "1280:736:0:64"
  card app-development "$theme" 0 264 2 "1280:736:0:64"
done
