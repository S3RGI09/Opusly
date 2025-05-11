# Opusly

This script allows you to easily convert audio files (MP3, AAC, FLAC) to the OPUS format.

## Prerequisites

Make sure you have **ffmpeg** installed. You can install it via the following commands:

- On Linux (Debian/Ubuntu-based):
  sudo apt-get install ffmpeg

- On macOS (using Homebrew):
  brew install ffmpeg

- On Windows, download the installer from [FFmpeg.org](https://ffmpeg.org/download.html).

## Usage

### Convert a Single File

To convert a single file to OPUS, run the following command:
```bash
./Opusly.sh <input_file> <output_directory>
```
- `<input_file>`: Path to the audio file (MP3, AAC, FLAC, etc.) that you want to convert.
- `<output_directory>`: Path to the directory where the OPUS file will be saved.

Example:
```bash
./Opusly.sh song.mp3 /path/to/output
```
This will convert `song.mp3` to `song.opus` in the specified output directory.

## Notes

- The script supports MP3, AAC, and FLAC files.
- The output file will have the same name as the original file but with a `.opus` extension.
- The default bitrate for OPUS conversion is set to `128k`.

Enjoy your OPUS files!
