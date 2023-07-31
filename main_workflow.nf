#!/usr/bin/env nextflow

include { preprocess, quantify, differential_expression } from './'

workflow mainWorkflow {
  // Define input parameters, if needed
  // params {
  //   treatment1 = 'path/to/treatment1/*.fastq.gz'
  //   treatment2 = 'path/to/treatment2/*.fastq.gz'
  //   control = 'path/to/control/*.fastq.gz'
  // }

  // Step 1: Data preprocessing
  preprocess()

  // Step 2: Gene expression quantification
  quantify()

  // Step 3: Differential expression analysis
  differential_expression()
}

