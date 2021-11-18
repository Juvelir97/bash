#!/bin/bash


invalid_input () {

	echo "Invalid input '$inp'" >&2
	exit 1
}

read -p "Enter a single item > " inp

# No element recieved
[[ -z $inp ]] && invalid_input

# Received more than 1 element
(( $(echo $inp | wc -w) > 1 )) && invalid_input

#input is valid
if [[ $inp =~ ^[-[:alnum:]\._]+$ ]]; then
	echo "'$inp' is a valid filename"
	if [[ -e $inp ]]; then 
		echo " And file '$inp' exists"
	else
		echo "However file '$inp' doesn't exist"
	fi

	if [[ $inp =~ ^-?[[:digit:]]*\.[[::digit::]]+$ ]]; then
		echo "'$inp' is a floating point num"
	else
		echo "'$inp' is not a floating point number"
	fi
	
	if [[ $inp =~ ^-?[[:digit:]]+$ ]];then
		echo "'$inp' is an integer"
	else
		echo "'$inp' isn't integer"
	fi
else
	echo "The string '$inp' isn't valid filename"
fi
