#!/bin/bash
#
# ExplainingComputers Termp. comparission Script
# 1. Install sysbench with 'sudo apt-get install sysbench -y'
# 2. Make the script runable with 'chmod +x temp_test.sh'
#
# Version 1.0

clear

time {
for f in {1..7}
do
	vcgencmd measure_temp
	sysbench --test=cpu --cpu-max-prime=25000 --num-threads=4 run >/dev/null 2>&1
done

vcgencmd measure_temp
}
