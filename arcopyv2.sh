#!/bin/bash


tar -cjf "$1".tar "$@" &&
	echo "ok" > result.txt ||
	{ echo "fails" > result.txt ; exit 1 ; } 

mv -f "$1".tar /home/oleg/tests/testd &&
	echo "ok" >> result.txt || 
	! echo "fails" >> result.txt
