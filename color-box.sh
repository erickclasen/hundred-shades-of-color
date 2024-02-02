#!/bin/bash

# Set the dimensions of the image
width=1024
height=1024

# Set the number of images in the series
num_images=1000

# Create a directory to store the images
mkdir -p color_spectrum_images

# Loop through the specified number of images
for ((i=0; i<num_images; i++)); do
    # Calculate the hue based on the current iteration
    hue=$((i * 360 / num_images))

    # Generate the filename with leading zeros
    filename="color_spectrum_images/image_$(printf "%03d" $i).png"

    # Use convert to create the PNG image with the specified dimensions and color
    convert -size ${width}x${height} xc:hsl\($hue,100%,50%\) $filename

    echo "Generated: $filename"
done
