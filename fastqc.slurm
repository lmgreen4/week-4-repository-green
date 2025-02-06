#!/bin/bash
#SBATCH --job-name=fastqc_ERR251429
#SBATCH --partition=RM-shared
#SBATCH --ntasks=8        # Use 8 CPU cores
#SBATCH --mem=8G         # Allocate more memory
#SBATCH --time=01:00:00
#SBATCH --output=fastqc_%j.log
#SBATCH --mail-user=jparedes@svsu.edu
#SBATCH --mail-type=ALL

# Load FastQC
module load FastQC

# Define directories
INPUT_DIR="/ocean/projects/agr250001p/jparedesmontero"
OUTPUT_DIR="$INPUT_DIR/fastqc_results"

# Create output directory
mkdir -p $OUTPUT_DIR

# Run FastQC with multiple threads
fastqc --threads 8 -o $OUTPUT_DIR $INPUT_DIR/ERR251429_*.fastq
