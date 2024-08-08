#!/bin/bash
#
#

LOCATION=$1
YEAR=$2 
MONTH=$3 
DAY=$4



URL="https://raw.githubusercontent.com/lakuapik/jadwalsholatorg/master/adzan/$LOCATION/$YEAR/$MONTH.json"

response=$(curl -s $URL) 

echo :"$response"


