#!/bin/bash

# Set the source, motifs and destination directories
fasta_dir="/home/bioinformatics/Desktop/msa/clusfasta"
motif_dir="/home/bioinformatics/Desktop/msa/meme_results_txt"
mast_results_dir="/home/bioinformatics/Desktop/msa/mast_out"

for fasta_file in $fasta_dir/*.fasta; do
  # get the base name of the fasta file (without the path or extension)
  base_name=$(basename "$fasta_file" ".fasta")
  # construct the path to the corresponding motif results file
  motif_file="$motif_dir/$base_name.fasta_meme.txt"
  # construct the path to the output file for the mast results
  output_file="$base_name.mast"
echo $motif_file "\n" $fasta_file "\n" $mast_results_dir "\n" $output_file
  # run mast using the fasta file and motif results file, and store the results in the output file
 /home/bioinformatics/meme/bin/mast  $motif_file $fasta_file
   #/home/bioinformatics/meme/bin/mast  $motif_file Cluster102_2.fasta  
   mv /home/bioinformatics/Desktop/msa/mast_out/mast.xml /home/bioinformatics/Desktop/msa/mast_out1/"$output_file.xml"
   mv /home/bioinformatics/Desktop/msa/mast_out/mast.txt /home/bioinformatics/Desktop/msa/mast_out1/"$output_file.txt"
   mv /home/bioinformatics/Desktop/msa/mast_out/mast.html /home/bioinformatics/Desktop/msa/mast_out1/"$output_file.html"
  # > $output_file
done

