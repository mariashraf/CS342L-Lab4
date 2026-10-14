#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: $0 <basic_salary>"
    exit 1
fi
basic=$1
if [ $basic -lt 1500 ]; then
    hra=$(awk "BEGIN {print $basic * 0.10}")
else
    hra=$(awk "BEGIN {print $basic * 0.20}")
fi
gross=$(awk "BEGIN {print $basic +$hra}")
echo "Basic Salary : $basic"
echo "HRA          : $hra"
echo "Gross Salary : $gross"
