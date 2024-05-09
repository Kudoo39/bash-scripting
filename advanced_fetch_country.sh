#!/bin/bash
# Assignment 4

url='https://restcountries.com/v3.1/name'

if [ $# -eq 0 ]; then
  read -p "Enter the name of the country: " country_names
  read -a country_names_array <<< ${country_names}
else
    country_names_array=("$@")
fi

for country_name in "${country_names_array[@]}"; do
  country_info=$(curl -s "${url}/$country_name")

  country=$(echo ${country_info} | jq -r '.[0].name.common')
  population=$(echo ${country_info} | jq -r '.[0].population')
  capital=$(echo ${country_info} | jq -r '.[0].capital[0]')
  languages=$(echo ${country_info} | jq -r '.[].languages | to_entries | map("\(.value)") | join(", ")')
  
  echo "Name: ${country}"
  echo "Capital: ${capital}"
  echo "Population: ${population}"
  echo "Languages: ${languages}"
  echo
done
