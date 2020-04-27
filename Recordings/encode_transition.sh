#!/bin/sh

ffmpeg -y \
  -i Transition.mov \
  -crf 30 -b:v 0 -an \
  -vf 'tmix=frames=7:weights="1 1 1 1 1 1 1"' -r 30 \
  Transition.webm
