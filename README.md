# spleeter-cli
An easy-to-use bash script to utilize the deezer/spleeter docker image.

# Usage
Valid models are: `2stems`, `4stems`, `5stems`, `2stems-16kHz`, `4stems-16kHz`, `5stems-16kHz`

Usage: `./spleeter-cli.sh [INPUT_FILE] [STEM_MODEL]`

Example: `./spleeter-cli.sh example.mp3 2stems`

# Notes
- Script should be run from the "spleeter-cli" directory, and the input file must be in the "spleeter-cli" directory.
- The "spleeter-cli" directory will be mounted as a volume in the docker container.
- The "output" directory will automatically be created within the spleeter-cli directory for storing the output files.
- The "model" directory will automatically be created within the spleeter-cli directory for storing downloaded model(s), this will avoid having to download model files each time you run the image.
- On first run, the docker image will be automatically downloaded, then will run from the local copy each time thereafter.
