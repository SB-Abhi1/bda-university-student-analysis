#!/bin/bash
awk -F',' '$1!="Student_ID" {print $5"\t1"}'
