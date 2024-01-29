#!/bin/bash

#
# Example on how to use it to format files on specific folder without using 100% CPU
#

cd watch

for file in *; do
  echo "Encoding $file"
  docker-compose run --rm ffmpeg -y -hide_banner -v warning -stats -i "/mnt/media_watch/$file" "/mnt/media_output/$file.mp4"
  echo ""
  echo ""
done

cd ../
