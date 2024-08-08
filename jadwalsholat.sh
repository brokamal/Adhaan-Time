#!/bin/bash
#
#

LOCATION=$1
YEAR=$2 
MONTH=$3 
DAY=$4
PRAYER=$5


URL="https://raw.githubusercontent.com/lakuapik/jadwalsholatorg/master/adzan/$LOCATION/$YEAR/$MONTH.json"

response=$(curl -s $URL) 

adhaan_time=$(echo $response | jq -r --arg date "$YEAR-$MONTH-$DAY" --arg prayer "$PRAYER" '.[] | select(.tanggal == $date) | .[$prayer]')


echo "$PRAYER time is : $adhaan_time"


