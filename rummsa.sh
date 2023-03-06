#!/bin/bash

# Change directory to the folder with the fasta files
cd home/bioinformatics/Desktop/msa/Cluster sequences1-363/Cluster sequences1-363/

# Use a for loop to iterate through all the fasta files in the folder
for file in *.fasta; do
  # Run Clustal Omega on the current file
  clustalo -i $file -o ${file%.fasta}.clustal -v
done
