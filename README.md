# spleeter-cli
An easy-to-use bash script to utilize the deezer/spleeter docker image.

# Usage
Valid models are: `2stems`, `4stems`, `5stems`, `2stems-16kHz`, `4stems-16kHz`, `5stems-16kHz`

Usage: `./spleeter-cli.sh [INPUT_FILE] [STEM_MODEL]`

Example: `./spleeter-cli.sh example.mp3 2stems`

# Notes
- Script should be run from the spleeter-cli directory
- Input file should be within spleeter-cli directory
- "output" and "model" directories will automatically be created within the spleeter-cli directory
