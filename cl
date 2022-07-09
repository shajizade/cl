#!/bin/bash
cols=""
for var in "$@"
do
        coln=\$$var
        cols="$cols$coln\" \""
done
awkp="{print $cols}"
awk "$awkp"
