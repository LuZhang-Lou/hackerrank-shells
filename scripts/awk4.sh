#!/bin/bash

awk '
BEGIN {id=0; prev="";  var=0}
{	if (and(id, 1) == 0) prev=$0;
	else printf "%s;%s\n", prev, $0;
	id++;
}
END {if (and(id, 1) == 1) printf "%s;\n", prev;}'
