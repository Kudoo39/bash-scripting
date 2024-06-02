#!/bin/bash
# Assignment 1

read -p 'Enter a weekday: ' date

check_date() {
    if [[ "${date}" == "Monday" ]]; then
        echo "${date} is the first day"
    elif [[ "${date}" == "Tuesday" ]]; then
        echo "${date} is the second day"
    elif [[ "${date}" == "Wednesday" ]]; then
        echo "${date} is the third day"
    elif [[ "${date}" == "Thursday" ]]; then
        echo "${date} is the fourth day"
    elif [[ "${date}" == "Friday" ]]; then
        echo "${date} is the fifth day"
    elif [[ "${date}" == "Saturday" ]]; then
        echo "${date} is the sixth day"
    elif [[ "${date}" == "Sunday" ]]; then
        echo "${date} is the last day"
    else
        echo "Invalid input. Please enter a valid weekday."
    fi
}

check_date