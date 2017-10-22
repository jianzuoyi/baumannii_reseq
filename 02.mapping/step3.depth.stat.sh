ls *.bam.depth | xargs -n1 | while read fn
do
    avg_depth=$(awk 'BEGIN {depth=0} {depth += $3} END{printf "%.2f\n", depth/NR}' $fn)
    depth20=$(awk '$3>=20' $fn | wc -l | awk '{printf "%.2f" ,$1/3927258*100}')
    depth10=$(awk '$3>=10' $fn | wc -l | awk '{printf "%.2f" ,$1/3927258*100}')
    depth4=$(awk '$3>=4' $fn | wc -l | awk '{printf "%.2f" ,$1/3927258*100}')
    depth1=$(awk '$3>=1' $fn | wc -l | awk '{printf "%.2f" ,$1/3927258*100}')
    echo MDR-CQ ${fn} $avg_depth $depth1 $depth4 $depth10 $depth20
done > all.covrage.txt
