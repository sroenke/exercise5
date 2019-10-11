# Calculates difference in wages between minimum wage earner with 12 or 16 years of school
# Usage: bash wagesdiff.sh 12 16

cat wages.csv | cut -d , -f 3,4 | sort | grep -E "^$1" > wages$1.csv
cat wages.csv | cut -d , -f 3,4 | sort | grep -E "^$2" > wages$2.csv
a=$( cat wages$1.csv | head -n 1 | cut -d , -f 2 | tr -d "\r")
b=$( cat wages$2.csv | head -n 1 | cut -d , -f 2 | tr -d "\r")
echo "$b-$a" | bc
