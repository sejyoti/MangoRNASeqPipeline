![Docker](https://img.shields.io/badge/-Docker-2496ED?style=flat&logo=docker&logoColor=white)
![Conda](https://img.shields.io/badge/-Conda-4B8BBE?style=flat&logo=conda-forge&logoColor=white)
![Nextflow](https://img.shields.io/badge/-Nextflow-E8831D?style=flat&logo=nextflow&logoColor=white)
![Bioinformatics](https://img.shields.io/badge/-Bioinformatics-41A043?style=flat)
![Documentation](https://img.shields.io/badge/-Documentation-0C5176?style=flat)
![Technical%20Writing](https://img.shields.io/badge/-Technical%20Writing-0C5176?style=flat)
![Open%20Source](https://img.shields.io/badge/-Open%20Source-26D198?style=flat)


# MangoRNASeqPipeline
 The pipeline consists of three modular Nextflow scripts, each dedicated to a specific step of the RNA-seq analysis workflow. 



The "MangoRNASeqPipeline" is a Nextflow-based bioinformatics pipeline designed for the comprehensive analysis of mango transcriptomic data obtained from RNA sequencing (RNA-seq) experiments. The pipeline aims to identify differentially expressed genes in mango samples subjected to different treatments and controls, providing valuable insights into the molecular mechanisms underlying specific physiological processes in mango plants.

## Table of Contents

- [Introduction](#introduction)
- [Pipeline Overview](#pipeline-overview)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

RNA-seq has become a widely used method for studying gene expression, and this pipeline streamlines the analysis of mango transcriptomic data. By utilizing Nextflow's workflow management capabilities, the MangoRNASeqPipeline offers a scalable and reproducible solution for researchers studying mango plant biology.

## Pipeline Overview

The MangoRNASeqPipeline consists of the following modular Nextflow scripts:

1. **preprocess.nf**: This script handles the initial data preprocessing stage, including quality control, read trimming, filtering, and alignment of the sequenced reads to the reference genome.

2. **quantify.nf**: The "quantify.nf" script performs gene expression quantification using Salmon v1.10.1, enabling accurate estimation of transcript abundances for each sample.

3. **differential_expression.nf**: The central component of the pipeline, this script employs the well-established DESeq2 (version X.X.X) tool to perform differential expression analysis. By statistically comparing gene expression levels between treatment groups and their corresponding controls, it facilitates the identification of significantly differentially expressed genes.

## Requirements

To run the MangoRNASeqPipeline, you need the following software and data:

- Nextflow (version 23.04)
- Salmon v1.10.1 
- DESeq2 (https://nf-co.re/modules/deseq2_differential)
- Reference genome and annotation files for the mango species
- Raw RNA-seq data in FASTQ format

## Installation

1. Install Nextflow version 23.04 by following the instructions [here](https://www.nextflow.io/docs/latest/getstarted.html).

2. Install Salmon v1.10.1 or Kallisto and DESeq2 using the package manager of your choice (e.g., conda, Bioconda).

3. Clone this repository to your local machine:

```bash
git clone git@github.com:sejyoti/MangoRNASeqPipeline.git
cd MangoRNASeqPipeline

## Usage

Customize the input data paths and parameters in the Nextflow scripts according to your experimental setup.

Execute the pipeline using Nextflow:

```bash
nextflow run preprocess.nf

Replace preprocess.nf with quantify.nf or differential_expression.nf for other steps.

Contributing
Contributions to the MangoRNASeqPipeline are welcome! If you have suggestions, bug reports, or would like to add new features, please open an issue or submit a pull request.

License
This project is licensed under the MIT License - see the LICENSE file for details.

The document is now ready to use, and the changes should help users better understand the pipeline and its components.

