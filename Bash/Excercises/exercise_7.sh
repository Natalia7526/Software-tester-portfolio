#!/bin/bash

# Check if an argument is provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file_or_directory>"
    exit 1
fi

# Get the file or directory name from the command-line argument
user_input="$1"

# Check if the input exists
if [ -e "$user_input" ]; then
    # Determine the type of file or directory
    if [ -f "$user_input" ]; then
        echo "The entered path is a regular file."
    elif [ -d "$user_input" ]; then
        echo "The entered path is a directory."
    else
        echo "The entered path is neither a regular file nor a directory."
    fi

    # Perform ls command with long listing option
    ls -l "$user_input"
else
    echo "The entered path does not exist."
fi

