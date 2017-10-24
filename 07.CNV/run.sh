#!/bin/bash

# Programs
source /its1/GB_BT2/jianzuoyi/pipeline/biosoft/CNVnator/root/bin/thisroot.sh
cnvnator_wrapper=/its1/GB_BT2/jianzuoyi/pipeline/biosoft/CNVnator/bin/cnvnator_wrapper.py
cnvnator=/its1/GB_BT2/jianzuoyi/pipeline/biosoft/CNVnator/bin/cnvnator
samtools=/its1/GB_BT2/jianzuoyi/biosoft/anaconda/bin/samtools
# Data
GENOME=/its1/GB_BT2/jianzuoyi/projects/baumannii/00.Rawdata/reference/IndexBWA/MDR-CQ.fa
OUTDIR=/its1/GB_BT2/jianzuoyi/projects/baumannii/07.CNV

#find /its1/GB_BT2/jianzuoyi/projects/baumannii/02.mapping -name '*.bam' > input.fofn
while read BAM
do
    sample=$(basename $BAM .bam)
    $cnvnator_wrapper -w 100 -b $BAM -o ${OUTDIR}/${sample} -g $GENOME -c CP019114 --cnvnator $cnvnator --samtools $samtools
done < input.fofn
