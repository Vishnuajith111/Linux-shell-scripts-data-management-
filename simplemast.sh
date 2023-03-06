#!/bin/bash

# specify the directory containing the fasta files
fasta_dir="/home/bioinformatics/Desktop/msa/clusfasta/"

# specify the directory containing the motif results files (with .txt extension)
motif_dir="/home/bioinformatics/Desktop/msa/meme_results_txt/"


# Find all fasta files
for fasta_file in $(find $fasta_dir -name "*.fasta") ; do
  # get the base name of the fasta file (without the path or extension)
  base_name=$(basename "$fasta_file" ".fasta")
  # construct the path to the corresponding motif results file
  motif_file="$(find $motif_dir -name "$base_name.fasta_meme.txt")"

  # run mast using the fasta file and motif results file, and store the results in the output file
 /home/bioinformatics/meme/bin/mast -oc /home/bioinformatics/Desktop/msa/MASTRESUL/$base_name $motif_file $fasta_file  
done
