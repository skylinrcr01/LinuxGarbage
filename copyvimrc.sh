#!/bin/bash

ipRange=(20 21 106 109)

echo ${ipRange[@]}

for i in ${!ipRange[@]}; do
        scp /home/pi/.vimrc trohren@192.168.29.${ipRange[$i]}:/home/trohren
done
