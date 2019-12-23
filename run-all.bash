#!/bin/bash

printf "To run 10M instructions\n"
printf "Language\tTime Taken(s)\n"
printf "C\t\t"
gcc loop.c -o cloop.out
(time ./cloop.out) |& grep real | cut -b 8-12
printf "C++\t\t"
g++ loop.cpp -o cpploop.out
(time ./cpploop.out) |& grep real | cut -b 8-12
printf "Java\t\t"
javac JLoop.java
(time java JLoop) |& grep real | cut -b 8-12
printf "Python\t\t"
(time python3 loop.py) |& grep real | cut -b 8-12
printf "Javascript\t"
(time node loop.js) |& grep real | cut -b 8-12
printf "Erlang\t\t"
erlc loop.erl
erl -noshell -eval 'loop:run(start),init:stop().' | cut -b -5
