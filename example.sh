#!/bin/bash

# variable
course="fs17"
# echo 'course name:' ${course}

# array
techs=(ts js)

# echo ${techs[@]}
# echo 'the length of techs array:' ${#techs[@]}

techs+=(bash)
# echo ${techs[@]}

# promp: enter their age => print out the value
# read -p 'what is your age? ' age
# echo 'age: ' ${age}

# loop
# echo 'tech stack:'
# for tech in ${techs[@]}; do
# echo "${tech}"
# done

# function
# read -p 'input the first number: ' number1
# read -p 'input the second number: ' number2

add() {
  sum=$((${number1} + ${number2}))
  echo 'the sum of' ${number1} 'and' ${number2} 'is:' $sum
}

# add

#if else 

# read -p 'input the score: ' score

# if [ ${score} -ge 90 ]; then
#     echo "You got an A."
# elif [ ${score} -ge 80 ]; then
#     echo "You got a B."
# elif [ ${score} -ge 70 ]; then
#     echo "You got a C."
# elif [ ${score} -ge 60 ]; then
#     echo "You got a D."
# else
#     echo "You failed :/"
# fi

read -p 'Enter a number: ' number

check_even_odd() {
    if ((${number} %2 == 0)); then
        echo "${number} is even"
    else
        echo "${number} is odd"
    fi
}

check_even_odd