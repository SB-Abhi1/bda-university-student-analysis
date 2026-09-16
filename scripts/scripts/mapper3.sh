#!/bin/bash
awk -F',' '$1!="Student_ID" {print $19"\t1"}'
