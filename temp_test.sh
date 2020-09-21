#!/bin/bash
#
# ExplainingComputers (Youtube) Script for temperature comparison 
# Version 1.1

clear

time {
for f in {1..7}
do
	vcgencmd measure_temp
	sysbench --test=cpu --cpu-max-prime=25000 --num-threads=4 run >/dev/null 2>&1
done

vcgencmd measure_temp
}
