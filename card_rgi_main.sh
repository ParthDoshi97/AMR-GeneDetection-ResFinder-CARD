#!/bin/bash

# Title: Automated Antimicrobial Resistance Detection Script using CARD database
# Description: This script automates the process of running the CARD RGI Main tool 
#              on multiple FASTA files, generating results for each file in separate folders.
# Usage: Ensure this script is executable and run it using: ./<script_name>.sh

# Base directory where the output folders will be saved
OUTPUT_BASE_DIR="/home/ubuntu/card/results"  # Adjust this path to your actual output directory

# Input directory containing the FASTA files
INPUT_DIR="/home/ubuntu/card/EGYPT"  # Adjust this path to your actual input directory

# Loop over each FASTA file in the input directory
for fasta_file in "${INPUT_DIR}"/*.fasta; do
    # Extract the base name of the file to use as the output directory name
    file_name=$(basename "${fasta_file}" .fasta)

    # Create an output directory for the current file
    output_dir="${OUTPUT_BASE_DIR}/${file_name}_output"
    mkdir -p "${output_dir}"

    # Run the CARD RGI Main tool locally
    rgi main \
        -i "${fasta_file}" \
        -o "${output_dir}/${file_name}_output" \
        -a BLAST \
        -n 2 \
        --clean \
        --local  
done

