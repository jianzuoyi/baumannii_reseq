#!/bin/bash
set -vex

SNP_PILEUP=/its1/GB_BT2/jianzuoyi/pipeline/BAC_pipeline_1.1.2/01.Snp/bin/BAC_SNP_pileup_1.0.0.pl
#LIB=/its1/GB_BT2/jianzuoyi/projects/baumannii/05.SNP.InDel/A2_H2MVWDMXX_L1.lib
LIB=all.lib
OUTDIR=/its1/GB_BT2/jianzuoyi/projects/baumannii/05.SNP.InDel/BAC_SNP_pileup

perl $SNP_PILEUP --lib $LIB --quality 20 --edge 5 --num 10 --outdir $OUTDIR --prefix BAC_SNP_pileup --project call_snp
