#!/bin/sh

ffmpeg -y \
  -i Transition.mov \
  -c:v libvpx -b:v 10M -an \
  -pix_fmt yuva420p -auto-alt-ref 0 \
  -vf 'tmix=frames=7:weights="1 1 1 1 1 1 1"' \
  -r 30 \
  Transition.webm
