#!/bin/bash

if [ -z "$1" ]; then
        echo "You need to provide an input file"
	echo ""
	echo "Usage: ./spleeter-cli.sh [INPUT_FILE] [STEM_MODEL]"
	echo "Example: ./spleeter-cli.sh example.mp3 2stems"
	exit 1;
fi

if [ -z "$2" ]; then
	echo "You need to provide a stem model"
	echo "Valid models are: 2stems, 4stems, 5stems, 2stems-16kHz, 4stems-16kHz, 5stems-16kHz"
	echo ""
	echo "Usage: ./spleeter-cli.sh [INPUT_FILE] [STEM_MODEL]"
	echo "Example: ./spleeter-cli.sh example.mp3 2stems"
	exit 1;
elif [ "2stems" == "$2" ]; then
	echo "Using Stem Model: $2"
elif [ "4stems" == "$2" ]; then
        echo "Using Stem Model: $2"
elif [ "5stems" == "$2" ]; then
        echo "Using Stem Model: $2"
elif [ "2stems-16kHz" == "$2" ]; then
        echo "Using Stem Model: $2"
elif [ "4stems-16kHz" == "$2" ]; then
        echo "Using Stem Model: $2"
elif [ "5stems-16kHz" == "$2" ]; then
        echo "Using Stem Model: $2"
else
	echo "Invalid stem model specified!"
	echo "Valid models are: 2stems, 4stems, 5stems, 2stems-16kHz, 4stems-16kHz, 5stems-16kHz"
	echo ""
	echo "Usage: ./spleeter-cli.sh [INPUT_FILE] [STEM_MODEL]"
	echo "Example: ./spleeter-cli.sh example.mp3 2stems"
	exit 1;
fi

export WORKING_DIRECTORY="$(pwd)"

echo "Input File: ${WORKING_DIRECTORY}/${1}"
echo "Starting..."

docker run \
    -v $WORKING_DIRECTORY:/spleeter \
    -e MODEL_PATH=/spleeter/model \
    researchdeezer/spleeter \
    separate -i /spleeter/${1} -p spleeter:${2} -o /spleeter/output
echo "End of script..."
