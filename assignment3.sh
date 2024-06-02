#!/bin/bash
# Assignment 3

url='https://api.github.com/repos/Kudoo39/trending/contents/src/pages?ref=dev'
response=$(curl -s ${url})
files=$(echo ${response} | jq -c '.[]')

for component_name in "$@"; do
    total_count=0
    for file in ${files}; do
        download_url=$(echo ${file} | jq -r '.download_url')
        component=$(curl -s ${download_url})
        component_count=$(echo ${component} | grep -o "\<${component_name}\>" | wc -l)
        total_count=$((total_count + component_count))
    done
    echo "${component_name} is used ${total_count} times"
done