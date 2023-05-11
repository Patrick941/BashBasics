#!/bin/bash

# pipe for communication
pipe=/tmp/my_pipe

# create the pipe if it doesn't exist
if [[ ! -p $pipe ]]; then
    mkfifo $pipe
fi

# start the C program in the background
./chat < $pipe | while read line
do
    # echo the response to the terminal
    echo "Received: $line"
    
    # send new input to the C program
    echo "This is a new input from bash" > $pipe
done
