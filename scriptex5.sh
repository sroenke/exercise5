sed -E 's/,/ /g' wages.csv | cut -d ' ' -f 1,2 | sort -k1,1 -k2n,2 > sortedwage.txt

echo "Number of top female earners:"
sort -n -k 4 wages.csv | tail -n 10 | grep -E "female" | wc -l > Topearners.csv
cat Topearners.csv
echo "Top earner:"
sort -n -k 4 wages.csv | cut -d ',' -f 1,2,4 | tail -n 1  
echo "Bottom earner:"
sort -n -k 4 wages.csv | cut -d ',' -f 1,2,4 | head -n 1


