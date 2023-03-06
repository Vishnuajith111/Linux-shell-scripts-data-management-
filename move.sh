#!/bin/bash

# Define the folder where the files are located
folder="Home/bioinformatics/Desktop/msa/Cluster sequences1-363/Cluster sequences1-363/"


# Use a for loop to iterate through all the files in the folder
for file in *; do
  # Get the file extension
  ext="${file%.clustal}"
  # Create a subfolder with the file extension name
  if [ ! -d "$ext" ]; then
    mkdir "clustal"
  fi
  # Move the file to the subfolder
  mv "$file" "clustal"
done
