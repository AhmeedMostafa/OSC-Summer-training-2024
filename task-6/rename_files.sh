#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 directory_path"
  exit 1
fi

DIR=$1

if [ ! -d "$DIR" ]; then
  echo "Error: $DIR is not a directory."
  exit 1
fi

for FILE in "$DIR"/*.txt; 
do
  if [ -e "$FILE" ]; then
    BASENAME=$(basename "$FILE")
    mv "$FILE" "$DIR/old_$BASENAME"
  fi
done

echo "Renaming completed."
