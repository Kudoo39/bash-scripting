#!/bin/bash

read -p "Enter the name of the country: " country_name

country_info=$(curl -s "https://restcountries.com/v3.1/name/$country_name")

country=$(echo "$country_info" | jq -r '.[0].name.common')
population=$(echo "$country_info" | jq -r '.[0].population')
capital=$(echo "$country_info" | jq -r '.[0].capital[0]')
languages=$(echo "$country_info" | jq -r '.[].languages | to_entries | map("\(.value)") | join(", ")')

echo "Name: ${country}"
echo "Capital: ${capital}"
echo "Population: ${population}"
echo "Languages: ${languages}"