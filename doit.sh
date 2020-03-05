#!/bin/zsh
## declare an array variable
declare -a arr=("bp" "hp" "rr" "fedex" "hsbc")

## now loop through the above array
for i in "${arr[@]}"
do
   echo "$i"
   mv bucket/$i/account_survey_$i.csv bucket/$i/account_survey_$i.xlsx
done

