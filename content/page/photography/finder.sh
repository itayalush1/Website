#!/bin/bash
#Script to look for new files in a directory, and add them to index.md for quick and simple adding images to site

FILENAME=$(find . -cmin -0.5)
export FILENAME=${FILENAME:4}
echo $FILENAME
echo '![test]("$FILENAME")' >> index.md


