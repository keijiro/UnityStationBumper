#!/bin/sh

ffmpeg -y \
  -i Bumper.mov -i ../Assets/Audio/Bumper.wav \
  -crf 30 -b:v 0 -b:a 120k \
  -vf 'tmix=frames=7:weights="1 2 3 4 3 2 1"' -r 30 \
  Bumper.webm
