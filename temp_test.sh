#!/bin/bash
#
# ExplainingComputers (Youtube) Script for temperature comparison
# Version 1.2

clear

#User Input
read -e -p  "Rounds: " -i "7" rounds

#check if rounds is a intiger
if ! [ "$rounds" -eq "$rounds" ] 2> /dev/null
then
	echo "ERROR: integers only"
	exit
fi

#temperature format
at=`vcgencmd measure_temp`; tempa=${at#*=}; temp=${tempa%????}	#read and format temp

starttemp=$temp				#set start temperature

#set vars
tempsum=0
max=$temp
min=$temp

#run the test
for ((f=1;f<=rounds;f++)); do
	at=`vcgencmd measure_temp`; tempa=${at#*=}; temp=${tempa%????}
	echo "Round #" $f " | temp=" $temp "°C"

	sysbench --test=cpu --cpu-max-prime=25000 --num-threads=4 run >/dev/null 2>&1 #Benchmark

	#find max temp
	if [ "$temp" -gt "$max" ]; then
        max=$temp
	fi

	#find min temp
        if [ "$temp" -lt "$min" ]; then
        min=$temp
        fi

	tempsum=$((tempsum + temp))
done

at=`vcgencmd measure_temp`; tempa=${at#*=}; temp=${tempa%????}
endtemp=$temp		#set end temp

tempsum=$((tempsum + endtemp))	#include last temp messurement in calculation

#find max temp
if [ "$endtemp" -gt "$max" ]; then
max=$endtemp
fi

#find min temp
if [ "$endtemp" -lt "$min" ]; then
min=$endtemp
fi

#Conclusion
mean=$((tempsum / f))

echo ""
echo "Start Temperature (Before Start): " $starttemp "°C"
echo "End Temperature (End last Round): " $endtemp "°C"
echo ""
echo "Mean Temperature: " $mean "°C"
echo "Max. Temperature: " $max "°C"
echo "Min. Temperature: " $min "°C"
