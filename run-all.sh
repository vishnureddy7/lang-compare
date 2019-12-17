#!/bin/bash


echo "To run 10M instructions"
echo -n "C "
gcc loop.c -o cloop
(time ./cloop) |& grep real | cut -b 8-12
echo -n "C++ "
g++ loop.cpp -o cpploop
(time ./cpploop) |& grep real | cut -b 8-12
echo -n "Java "
javac JLoop.java
(time java JLoop) |& grep real | cut -b 8-12
echo -n "Python "
(time python3 loop.py) |& grep real | cut -b 8-12
echo -n "Javascript "
(time node loop.js) |& grep real | cut -b 8-12
echo -n "Erlang "
erl -noshell -eval 'loop:run(start),init:stop().' | cut -b -5
