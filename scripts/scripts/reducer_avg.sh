#!/bin/bash
awk -F'\t' '{sum[$1]+=$2; count[$1]++} END {for (d in sum) printf "%s\t%.2f\n", d, sum[d]/count[d]}'
