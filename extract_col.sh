#!/bin/sh
FILE="../geysertimes_eruptions_complete_2018-10-25.tsv"
for i in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22
do
  cut -f${i} ${FILE} > col_${i}.txt
done
