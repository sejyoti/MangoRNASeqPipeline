#!/usr/bin/env nextflow

// Import required processes
include { trimReads, alignReads } from './'

// Define the input data for treatments and controls
params {
  treatment1 = 'path/to/treatment1/*.fastq.gz'
  treatment2 = 'path/to/treatment2/*.fastq.gz'
  control = 'path/to/control/*.fastq.gz'
}

// Step 1: Trim and filter raw reads
process trimTreatment1 {
  input:
  set val(sample_id), file(reads) from treatment1

  output:
  file("${sample_id}_trimmed.fastq.gz") into trimmed_reads_treatment1

  script:
  """
  trimReads.sh ${reads} ${sample_id}_trimmed.fastq.gz
  """
}

// Similar processes for trimTreatment2 and trimControl

// Step 2: Align trimmed reads to the reference genome
process alignTreatment1 {
  input:
  file(trimmed_reads) from trimmed_reads_treatment1

  output:
  file("${sample_id}.bam") into aligned_bams_treatment1

  script:
  """
  alignReads.sh ${trimmed_reads} ${sample_id}.bam
  """
}

// Similar processes for alignTreatment2 and alignControl

