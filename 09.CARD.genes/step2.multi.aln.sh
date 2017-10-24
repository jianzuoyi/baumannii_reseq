#!/bin/bash

while read reg
do
    ls *${reg}.fa | xargs cat > ${reg}.multi.fa
    muscle -in ${reg}.multi.fa -out ${reg}.multi.fa.aln -clw
done < regions.txt
