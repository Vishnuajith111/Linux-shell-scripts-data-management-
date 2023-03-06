#!/bin/bash

# Change directory to the folder with the fasta files


# Use a for loop to iterate through all the fasta files in the folder
for file in *.fasta; do
  # Run Clustal Omega on the current file
   meme $file -protein -nmotifs 3 -minw 8 -maxw 50 -o meme/$file
done
