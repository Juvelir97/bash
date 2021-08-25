#!/bin/bash


cd ~/dir1
find . -type f -exec test ! -e ../dir2/{} \; -a -exec echo {} \;
