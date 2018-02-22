#!/bin/sh

##########################################
# This shell script will scrape the Node server for all package names and spit
# out the output as a line break delimited text file.
##########################################

curl -s https://skimdb.npmjs.com/registry/_all_docs | grep \"id\": | cut -d\" -f4 > ./NodeDb.txt
