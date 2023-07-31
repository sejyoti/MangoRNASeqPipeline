#!/usr/bin/env nextflow

// Import required processes
include { runDESeq2 } from './'

// Define the conditions for differential expression analysis
params {
  conditions = [
    ['treatment1', 'control'],
    ['treatment2', 'control']
  ]
}

// Step 1: Perform differential expression analysis using DESeq2
process runDESeq2Process {
  input:
  tuple val(treatment), val(control) from conditions
  file(treatment_quant) from quant_files_treatment1
  file(control_quant) from quant_files_control

  output:
  file("results_${treatment}_vs_${control}.csv") into differential_expression_results

  script:
  """
  runDESeq2.sh ${treatment_quant} ${control_quant} results_${treatment}_vs_${control}.csv
  """
}

// Similar processes for the second treatment-control pair

