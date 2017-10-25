#!/bin/bash

while read reg
do
    ls *${reg}*rename.fasta | xargs cat > ${reg}.merge.fasta
    muscle -in ${reg}.merge.fasta -out ${reg}.merge.fasta.aln -clwstrict
done < regions.txt
