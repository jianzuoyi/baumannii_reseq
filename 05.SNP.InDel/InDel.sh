#!/bin/bash

InDel_pileup=/its1/GB_BT2/jianzuoyi/pipeline/BAC_pipeline_1.1.2/02.InDel/bin/BAC_InDel_pileup_1.0.0.pl
LIB=lib.txt
OUTDIR=$(pwd)/Result

perl $InDel_pileup --lib $LIB --outdir $OUTDIR --project mgtest
