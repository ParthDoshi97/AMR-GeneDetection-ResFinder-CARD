#!/bin/bash

# Title: Automated Antimicrobial Resistance Detection Script
# Description: This script automates the process of running ResFinder and PointFinder
#              on multiple FASTA files, generating results for each file in separate folders.
# Usage: Ensure this script is executable and run it using: ./<script_name>.sh

# Base directory where the output folders will be saved
OUTPUT_BASE_DIR="/home/ubuntu/result_pf"

# Directories for ResFinder and PointFinder databases
rf_dir="/home/ubuntu/resfinder/db_resfinder"
pf_dir="/home/ubuntu/resfinder/pointfinder_db"

# Input directory containing the FASTA files
INPUT_DIR="/home/ubuntu/EGYPT"  # Adjust this path to your actual input directory

# Ensure the output base directory exists
mkdir -p "${OUTPUT_BASE_DIR}"

# Loop over each FASTA file in the input directory
for fasta_file in ${INPUT_DIR}/*.fasta; do
    # Extract the base name of the file to use as the output directory name
    file_name=$(basename "${fasta_file}" .fasta)

    # Create an output directory for the current file
    output_dir="${OUTPUT_BASE_DIR}/${file_name}_output"
    mkdir -p "${output_dir}"

    # Run ResFinder with the specified parameters
    python3 run_resfinder.py \
        -ifa "${fasta_file}" \
        -o "${output_dir}" \
        -s "Staphylococcus aureus" \
        -l 0.6 \
        -t 0.9 \
        --acquired \
        -db_res "${rf_dir}" \
        -c \
        -db_point "${pf_dir}"

    echo "Analysis complete for ${file_name}"
done

echo "All files processed."



