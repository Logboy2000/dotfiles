#!/bin/sh

pidof -q gpu-screen-recorder && exit 0
video_path="$HOME/Videos/Clips"
mkdir -p "$video_path"
# gpu-screen-recorder -w screen -f 60 -a default_output -c mkv -bm cbr -q 45000 -r 30 -o "$video_path"
gpu-screen-recorder -w screen -f 60 -a default_output -c mkv -k h264 -encoder gpu -bm cbr -q 45000 -r 30 -o "$video_path"
