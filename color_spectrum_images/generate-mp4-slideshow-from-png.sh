#!/bin/bash
#ffmpeg -framerate 1/3 -i "image(%d).png" -c:v libx264 -r 30 -pix_fmt yuv420p slideshow.mp4
##!/bin/bash
ffmpeg -framerate 1 -pattern_type glob -i "image\_[0-9]*\.png" -c:v libx264 -r 30 -pix_fmt yuv420p slideshow.mp4
