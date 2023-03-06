#!/bin/bash

src_dir="/home/bioinformatics/Desktop/msa/meme"
dst_dir="/home/bioinformatics/Desktop/msa/meme results txt"
  find $src_dir -type f -name "*.txt" | while read file; do
  # Get the subdirectory name
  sub_dir=$(dirname $file | sed "s|$src_dir||")
  # Get the file name
  file_name=$(basename $file)
  # Concatenate subdirectory and file name
  new_file_name="${sub_dir}_${file_name}"
  # Copy the file to the destination directory
  cp $file "$dst_dir/$new_file_name"
done
