OUTDIR=fastqc
mkdir -p $OUTDIR
find /its1/GB_BT2/jianzuoyi/projects/baumannii/00.Rawdata/clean_data -name '*merged*' | xargs echo fastqc -o ./> ${OUTDIR}/fastqc.sh
echo "multiqc ." >> ${OUTDIR}/fastqc.sh
