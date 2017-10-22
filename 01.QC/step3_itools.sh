#!/bin/bash

ITOOLS=/its1/GB_BT2/jianzuoyi/biosoft/iTools/iTools_Code/iTools
OUTDIR=/its1/GB_BT2/jianzuoyi/projects/baumannii/01.QC/iTools
mkdir -p $OUTDIR
while read fq
do
    name=$(basename $fq .gz)
    echo "$ITOOLS Fqtools stat -InFq $fq -OutStat ${OUTDIR}/${name}.stat"
done < input_cleandata.fofn > ${OUTDIR}/iTools.sh
