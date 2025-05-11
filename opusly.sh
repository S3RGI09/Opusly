#!/bin/bash

echo "- Opusly - | - By S3RGI09 -"

if [ "$#" -lt 2 ]; then
    echo "Usage: $0 <files or directories> <output directory>"
    exit 1
fi

output_dir="$2"
mkdir -p "$output_dir"

convert_to_opus() {
    input_file="$1"
    filename=$(basename "$input_file")
    name="${filename%.*}"
    output_file="$output_dir/$name.opus"
    echo "Converting: $filename -> $output_file"
    ffmpeg -i "$input_file" -c:a libopus -b:a 128k "$output_file"
}

if [[ "$1" == *","* ]]; then
    IFS=',' read -ra files <<< "$1"
    for file in "${files[@]}"; do
        if [ -f "$file" ]; then
            convert_to_opus "$file"
        else
            echo "File not found: $file"
        fi
    done
else
    input_dir="$1"
    if [ -d "$input_dir" ]; then
        find "$input_dir" -type f -iname "*.mp3" -o -iname "*.aac" -o -iname "*.flac" | while read -r file; do
            convert_to_opus "$file"
        done
    else
        echo "Directory not found: $input_dir"
        exit 1
    fi
fi