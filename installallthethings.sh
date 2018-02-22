#!/bin/bash

#: > nodedbin.txt

#while read -r LINE; do 
#	npm install "$LINE" --save
#done 
 
#cat /home/trohren/sinopia/nodejsdb2018.txt | xargs npm install {} --save

echo "$date" >> /home/trohren/installallthethingslog.txt

for line in $(cat /home/trohren/sinopia/nodejsdb2018.txt); do
npm install "${line}" --save 2> /home/trohren/installallthethingslog.txt
done
