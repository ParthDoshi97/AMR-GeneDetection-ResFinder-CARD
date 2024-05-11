# Resfinder & CARD Database Integration Tool

![License](https://img.shields.io/badge/license-MIT-green)
![Python Version](https://img.shields.io/badge/python-3.8+-blue.svg)
![Platform](https://img.shields.io/badge/platform-linux-lightgrey)

This repository hosts powerful scripts designed to predict antimicrobial resistance genes using the Resfinder and CARD (Comprehensive Antibiotic Resistance Database) databases. Tailored for high-throughput genomic data analysis, our tools are ready to handle multiple input files efficiently, making them perfect for batch processing.

## Prerequisites

Before you begin, make sure you have installed:

- [Resfinder](https://github.com/path/to/resfinder)
- [CARD](https://github.com/path/to/card)
- Python 3.8 or higher

## Installation
Follow these steps to set up the tools for your use:

1. Clone the repository:
   ```bash
   git clone https://github.com/ParthDoshi97/AMR-GeneDetection-ResFinder-CARD.git
   cd AMR-GeneDetection-ResFinder-CARD
   ```
2. Visit the Resfinder and CARD GitHub pages for specific installation instructions:
   - Resfinder - (https://github.com/path/to/resfinder)
   - CARD - (https://github.com/path/to/card)
   

## Configuration
- Update the paths in the Bash Script to your input and output directories.
-  Customize the script settings as needed by modifying the command-line options detailed on the GitHub pages of Resfinder and CARD.

## Usage
To run the scripts after installation, navigate to the directory and execute the run script:
```bash                                                    Copy code
./run_script.sh  # Replace `run_script.sh` with your script's filename.
```
## References
Alcock et al. 2023. "CARD 2023: expanded curation, support for machine learning, and resistome prediction at the Comprehensive Antibiotic Resistance Database." Nucleic Acids Research, 51, D690-D699. PMID 36263822

Bortolaia V, et al. "ResFinder 4.0 for predictions of phenotypes from genotypes." Journal of Antimicrobial Chemotherapy. 2020 Aug 11. PMID: 32780112
