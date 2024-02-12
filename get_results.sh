#!/bin/bash
echo $(($(awk '{s+=$1} END {print s}' bench_results) / $(cat bench_results|wc -l)))
