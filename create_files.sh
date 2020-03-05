#!/bin/zsh
for f in 'machine_data' 'financial_data' 'questionaire_data'
do
  echo $f
  for dirname in 'bp' 'fedex' 'rr' 'hp' 'hsbc'
  do
    cd $dirname 
    for c in 'bp' 'fedex' 'rr' 'hp' 'hsbc'
    do
      echo "$f_$c.csv"
    done
    cd .. 
  done
done
