#!/bin/sh

ffmpeg -y \
  -i Bumper.mov -i ../Assets/Audio/Bumper.wav \
  -c:v libvpx -b:v 10M -b:a 120k \
  -pix_fmt yuva420p -auto-alt-ref 0 \
  -vf 'tmix=frames=7:weights="1 2 3 4 3 2 1"' \
  -r 30 \
  Bumper.webm
