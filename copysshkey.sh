#!/bin/bash

ipRange=(20 21 106 109)

echo ${ipRange[@]}

for i in ${!ipRange[@]}; do
        ssh-copy-id trohren@192.168.29.${ipRange[$i]}
done
