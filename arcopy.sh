#!/bin/bash

cd $1
tar --exclude='testd' -cvjf "${1:12}".tar *  &&
	echo "OK" > result.txt ||
	{ echo "failed" > result.txt ; exit 1 ; }

mv -f "${1:12}".tar "$1/testd" &&
	echo "OK" >> result.txt ||
	! echo "failed" >> result.txt

