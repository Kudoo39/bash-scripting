#!/bin/bash
# Assignment 2

url='https://api.github.com/repos/Kudoo39/trending-api/contributors'
data=$(curl -s ${url})

for contributor in $(echo ${data} | jq -c '.[]'); do
    login=$(echo $contributor | jq -r '.login')
    contributions=$(echo $contributor | jq -r '.contributions')
    echo "Member: ${login} - Commit: ${contributions}"
done