#!/usr/bin/env bash
# File: guessinggame.sh

cfiles=$(ls | wc -l) # number of files
number=0 # enter the number

red="\033[0;31m"
green="\033[0;32m"
blue="\033[1;34m"
nc="\033[0m" # no color

function congr {
  echo -e "${green}Congratulations! Congratulations! \
Congratulations to you! You guessed it!${nc}"
}

while [[ $cfiles -ne $number ]]
do
  echo "How many files are in the current directory (enter a number):"
  read number
  if [[ $number -lt $cfiles ]]
  then
    echo -e "Your guess was either too ${blue}low${nc}, please try again! "
  elif [[ $number -gt $cfiles ]]
  then
    echo -e "Your guess was either too ${red}high${nc}, please try again!"
  fi
done

congr
