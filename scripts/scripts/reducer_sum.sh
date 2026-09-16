#!/bin/bash
awk -F'\t' '{count[$1]+=$2} END {for (d in count) print d"\t"count[d]}'
