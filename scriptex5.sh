sed -E 's/,/ /g' wages.csv | cut -d ' ' -f 1,2 | sort -k1,1 -k2n,2 > sortedwage.txt
