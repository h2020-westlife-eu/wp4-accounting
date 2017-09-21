#!/bin/bash

year=2015
month=11

endyear=$(date +%Y)
endmonth=$(date +%m | sed 's/^0*//')

dir=$(dirname $0)

while [[ $(($year * 12 + $month)) -le $(($endyear * 12 + $endmonth)) ]]; do
	echo -n $year/$month,
	RAW=y bash $dir/westlife-accounting.sh $year/$month $year/$month
	month=$((month + 1))
	if [[ $month -eq 13 ]]; then
		month=1
		year=$(($year + 1))
	fi
done
