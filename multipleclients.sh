#!/bin/bash

for N in {0..124}
do
    ruby client.rb $(($N % 6)) &
done
wait
