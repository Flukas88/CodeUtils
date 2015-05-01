#!/bin/bash

PROCESS=$1

if (($# < 1))
then
        echo "$(basename $0) : Process to verify is needed";
        exit 255;
fi

for pid in $(ps -ef | grep $PROCESS | grep -v grep | awk '{print $2}')
do
     HUGE=$(grep huge /proc/$pid/numa_maps 2>/dev/null)
     RES=$?
     if [ $RES -eq 0 ]
     then
       echo -e "\e[0;32m[YES] Pid $pid is using hugepages"
     else
       echo -e "\e[0;91m[NO] Pid $pid is not using hugepages"
     fi
done
