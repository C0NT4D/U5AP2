#!/bin/bash

while read nombre; do
mkdir $nombre
x=1;
while [$x -le $1]; do
rm -r "$nombre/persona $x"
x=$((x+1))
done < "nombre.txt"
