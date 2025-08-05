#!/bin/bash
#log_report.sh

echo "--- Log Report in $PWD ---" > log_report.txt
echo "Files found: $(find . -name '*.log' | wc -l)" >> log_report.txt
echo "Total files size: $(du -ch | grep total)" >> log_report.txt
echo "Top 5 files by size:" >> log_report.txt
ls --block-size=M --sort=size -la | grep \\.log | head -5 | awk '{print "File: " $9 "\tSize: " $5 }' >> log_report.txt

