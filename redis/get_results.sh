#!/bin/bash

nb=$(cat results|wc -l)
total=0
for res in $(cat results |grep -E -o '[0-9]{3,}'); do total=$(expr $total + $res); done
echo "$(expr $total / $nb)"
