#!/usr/bin/env nextflow

// Import required processes
include { quantifyGeneExpression } from './'

// Step 1: Quantify gene expression using Salmon or Kallisto
process quantifyTreatment1 {
  input:
  file(bam_file) from aligned_bams_treatment1

  output:
  file("${sample_id}_quant.sf") into quant_files_treatment1

  script:
  """
  quantifyGeneExpression.sh ${bam_file} ${sample_id}_quant.sf
  """
}

// Similar processes for quantifyTreatment2 and quantifyControl

