#!/bin/bash
echo "# Memory Busy process :"
TOP3=`ps aux | awk '{print $4"\t"$11}' | sort | uniq -c | awk '{print $2" "$1" "$3}' | sort -nr|head -n 3`
echo "$TOP3"
echo ""

echo "# Laading avg :"
top=`top -n 1 -b|grep load`
echo "$top"
echo ""

echo "# Memory Using"
free -m

echo ""
echo "# Connection"
online=`netstat -n|grep ESTABLISH|wc -l`
echo "All Connect: $online"

online=`netstat -n|grep '\:80'|grep ESTAB|awk '{print $5}'|awk -F ':' '{print $1}'|sort|uniq|wc -l`
echo "Web Conenct (without duplication): $online"
echo ""

echo "# Specfic Net status"
netstat=`netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}'`
echo "$netstat"
echo ""

echo "# Specfic TCP process"
echo "`netstat -antup|grep '0 0.0.0.0'|awk '{print $4"\t"$6"\t"$7}'`"
echo ""
