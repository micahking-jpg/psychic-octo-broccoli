#!/bin/bash

pids=$(ps -ef | grep inner_guesser | grep -v grep | awk '{print $2}')
if [ -n "$pids" ]; then
    echo "$pids" | xargs kill
    sleep 5
fi
 
pids=$(ps -ef | grep dr_neptune_prover | grep -v grep | awk '{print $2}')
if [ -n "$pids" ]; then
    echo "$pids" | xargs kill
    sleep 5
fi