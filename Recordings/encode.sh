#!/bin/sh
ffmpeg -i Bumper.mov -i ../Assets/Audio/Bumper.wav -b:v 2M -b:a 120k Bumper.webm
