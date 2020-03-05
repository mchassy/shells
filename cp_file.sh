#!/bin/zsh
for f in MACHINE*.csv 
do
  filename="${f%.*}"
  # take action on each file. $f store current file name
  echo "Processing $filename ..."
  company_name=$(echo $filename| cut -d'_' -f 2)
  echo "$company_name" 
  cp $f FIN_$company_name.csv
done
