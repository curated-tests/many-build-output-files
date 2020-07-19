#! /bin/bash

mkdir public
cd public

for n in {1..17000}; do
    dd if=/dev/urandom of=file$( printf %03d "$n" ).bin bs=1 count=$(( RANDOM + 1024 ))
done
