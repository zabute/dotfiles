#!/usr/bin/env bash

set -euo pipefail

if [ $# -ne 1 ]; then
  echo "Usage: $0 <path-to-video>" >&2
  exit 1
fi

VIDEO_PATH="$1"

mpv "$VIDEO_PATH" \
  --vo=wlshm \
  --no-audio \
  --start=100% \
  --keep-open=yes \
  --cache=yes \
  --cache-secs=0.5 \
  --demuxer-readahead-secs=0.1 \
  --demuxer-max-bytes=2MiB \
  --demuxer-lavf-o=probe_seek=0 \
  --demuxer-lavf-o=fflags=+discardcorrupt+genpts+nobuffer \
  --keepaspect=yes
