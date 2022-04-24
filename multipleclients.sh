#!/bin/bash

for N in {0..49}
do
    ruby client.rb $(($N % 6)) &
done
wait
