#!/bin/bash

time gource --load-config fossrit_multigource.conf -f -1280x720 foss_gource.log --output-ppm-stream - | ffmpeg     -y -b 3000K -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 fossrit.mp4
