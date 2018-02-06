# awk match

 1037  cat ia_to_stores_20171016_120040-20171017_115406.csv |awk -F\, '{if(!match($6,/10\.6\.232\.43/)) print $4, $5, $6, $7, $8, $9, $10 }'
 1038  cat ia_to_stores_20171016_120040-20171017_115406.csv |awk -F\, '{if(match($6,/10\.6\.232\.43/)) print $4, $5, $6, $7, $8, $9, $10 }'

# Add Line numbers to beginning of each line of CSV file:
awk '{printf("%010d,%s\n", NR, $0)}'
