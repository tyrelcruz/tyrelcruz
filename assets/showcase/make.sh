#!/usr/bin/env bash
# Records the portfolio's showcase sections and turns each into one animated card:
# the section header (from assets/build.py) stacked on the recording, corners rounded.
# Animated WebP rather than GIF: it keeps the transparent corners at a fraction of the size.
#
#   python3 assets/build.py          # writes the headers to assets/src/headers/
#   (serve the portfolio build on :4321)
#   bash assets/showcase/make.sh          # records, then encodes assets/showcase/*.webp
#
# Needs node, Google Chrome and ffmpeg (FFMPEG=/path/to/ffmpeg to override).
# Scroll ranges are the section offsets at a 1280×800 viewport; re-measure them if the portfolio changes.
set -euo pipefail
HERE="$(cd "$(dirname "$0")" && pwd)"
ROOT="$(dirname "$(dirname "$HERE")")"
FRAMES="${FRAMES:-$HERE/.frames}"
FFMPEG="${FFMPEG:-ffmpeg}"
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
W=860

record() { # name mode args...
  [ -d "$FRAMES/$1" ] && [ -n "$(ls -A "$FRAMES/$1")" ] && return
  node "$HERE/record.mjs" "$2" "$FRAMES/$1" "${@:3}"
}

header_png() { # name → $FRAMES/<name>-header.png, sized exactly to the SVG
  local svg="$ROOT/assets/src/headers/$1.svg" h
  h=$(grep -oE 'height="[0-9]+"' "$svg" | head -1 | grep -oE '[0-9]+')
  printf '<html><body style="margin:0"><img src="file://%s" width="%s"></body></html>' "$svg" "$W" > "$FRAMES/$1-header.html"
  "$CHROME" --headless=new --disable-gpu --hide-scrollbars --allow-file-access-from-files \
    --window-size="$W,$h" --screenshot="$FRAMES/$1-header.png" "file://$FRAMES/$1-header.html" 2>/dev/null
  echo "$h"
}

card() { # name first count every crop
  local name=$1 first=$2 count=$3 every=$4 crop=$5 hh r=18
  hh=$(header_png "$name")
  # Rounded corners: transparent outside the radius, a hairline just inside it.
  local d="hypot(max(0,max($r-X,X-(W-1-$r))),max(0,max($r-Y,Y-(H-1-$r))))"
  "$FFMPEG" -hide_banner -loglevel error -y -framerate 12 -start_number "$first" -i "$FRAMES/$name/f%04d.jpg" \
    -i "$FRAMES/$name-header.png" -frames:v "$count" -filter_complex "
      [0:v]select='not(mod(n\,$every))',setpts=N/12/TB,crop=$crop,scale=$W:-2:flags=lanczos,
           pad=$W:ih+$hh:0:$hh:color=0xfaf9f7[v];
      [v][1:v]overlay=0:0,format=rgba,
           geq=r='if(gt($d,$r-1.3),227,r(X,Y))':g='if(gt($d,$r-1.3),224,g(X,Y))':b='if(gt($d,$r-1.3),218,b(X,Y))':a='if(gt($d,$r),0,255)',
           format=yuva420p" \
    -c:v libwebp_anim -lossless 0 -quality 82 -compression_level 6 -loop 0 "$HERE/$name.webp"
  echo "$name.webp  $(du -h "$HERE/$name.webp" | cut -f1)"
}

mkdir -p "$FRAMES"
record ai-solutions    scroll 6452 20012 160
record ai-game         doodle 62332
record web-development scroll 20012 28316 120
record app-development scroll 28316 55836 260

card ai-solutions    6 160 1 "1280:736:0:64"
card ai-game         0 74  1 "1000:680:140:120"
card web-development 5 110 1 "1280:736:0:64"
card app-development 0 264 2 "1280:736:0:64"
