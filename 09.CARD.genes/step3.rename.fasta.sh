#!/bin/bash

ls *L1*.fa | xargs -n1 -I {} echo "bioawk -c fastx '{print \">\"substr(FILENAME,1,11);print \$seq}' {} > {}.rename.fasta"
