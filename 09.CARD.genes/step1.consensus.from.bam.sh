#!/bin/bash

while read BAM
do
    name=$(basename $BAM .bam)
    grep Name MDR-CQ.gff3 | awk '{print "CP019114:"$4"-"$5}' > regions.txt
    while read region
    do
#        echo "samtools view -h $BAM $region | samtools view -bS - | samtools sort -o ${name}_${region}.bam -"
	echo "samtools mpileup -uf /its1/GB_BT2/jianzuoyi/projects/baumannii/00.Rawdata/reference/Sequence/MDR-CQ.fa \
${name}_${region}.bam | bcftools view -cg - ${region} | ./vcfutils.pl vcf2fq | seqtk seq -A - > ${name}_${region}.fa"
    done < regions.txt
done < input_bam.fofn
