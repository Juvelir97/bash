#!/bin/bash

#Check if an input consists only of alphabetical and numeric characters

validAlphaNum()
{
	#Remove all unacceptable chars

	validchars="$(echo $1 | sed -e 's/[^[:alnum:]]//g')"

	if [ "$validchars" = "$1" ] ; then
		return 0
	else
		return 1
	fi
}

# Begin main script

echo -n "Enter input: "
read input

#Input validation
if ! validAlphaNum "$input" ; then
	echo "Please enter only letters and numbers." >&2
	exit 1
else
	echo "Input is valid"
fi

exit 0
