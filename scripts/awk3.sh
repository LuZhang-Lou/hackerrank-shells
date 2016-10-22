#!/bin/bash

awk '
BEGIN {var=0} 
{	var=($2+$3+$4)/3; 
	printf "%s : ", $0; 
	if (var >= 80) print "A"; 
	else if (var >= 60) print "B"; 
	else if (var >= 50) print "C"; 
	else print "FAIL";
}'

