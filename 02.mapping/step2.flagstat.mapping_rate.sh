ls *.stat| xargs -n1 awk 'NR==5{print $0,FILENAME}' | sed 's/.bam.stat//g' | awk '{print $8,$5}' | sed 's/[(%]//g' > all.mapping_rate.txt
