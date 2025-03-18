#!/bin/sh
now=$(date +"%Y/%m/%d %H:%M:%S")
input=$1
out=$2
#maxfreeze=7000 #sec
sethours=$3
maxfreeze=$(expr $sethours \* 3600)
cnt=0
#echo -e "\x1b[0;31mRemote Copy - Freeze time bigger than $sethours hours:\x1b[0m "
printf  "============================================\n" > $out

printf  "Timestamp: $now \n" >> $out
printf  "Remote Copy - Freeze time bigger than $sethours hours\n" >> $out
printf "\n" >> $out
printf  "============================================\n" >> $out
printf "\n" >> $out
while IFS= read -r line
do
  freeze=$(echo $line | sed 's/.* //' | sed 's/\(.*\)\//\1:/' | sed 's/\(.*\)\//\1:/' | sed 's/\(.*\)\//\1 /')
  s_in_s=$(date --date "$freeze" +%s)
  c_in_s=$(date --date "$now" +%s)
  diff=$((c_in_s - s_in_s))
  if [[ $diff -gt $maxfreeze ]]; then
  printf $line >> $out
  printf "\n" >> $out
  cnt=$(expr $cnt + 1)
 fi
done < "$input"
printf "\n" >> $out
printf  "==EOF===========================Total:$cnt== \n" >> $out
if [[ $cnt != 0 ]]
then
#mailx -s "Replication Issues Last $sethours hrs: $cnt" dimitris.xypolias@kyndryl.com < $out
else 
exit
fi

