#!/bin/bash

pids=$(ps -ef | grep inner_guesser | grep -v grep | awk '{print $2}')
if [ -n "$pids" ]; then
    echo "$pids" | xargs kill
    sleep 5
fi

nohup ./inner_guesser.sh >> guesser.log 2>&1 &
 