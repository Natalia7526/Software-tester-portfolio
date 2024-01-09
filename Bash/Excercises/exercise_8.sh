#!/bin/bash

# Check if any arguments are provided
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <file_or_directory1> <file_or_directory2> ..."
    exit 1
fi

# Iterate through all the arguments
for user_input in "$@"; do
    # Check if the input exists
    if [ -e "$user_input" ]; then
        # Determine the type of file or directory
        if [ -f "$user_input" ]; then
            echo "The entered path '$user_input' is a regular file."
        elif [ -d "$user_input" ]; then
            echo "The entered path '$user_input' is a directory."
        else
            echo "The entered path '$user_input' is neither a regular file nor a directory."
        fi

        # Perform ls command with long listing option
        ls -l "$user_input"
    else
        echo "The entered path '$user_input' does not exist."
    fi

    # Add a separator between entries for better readability
    echo "----------------------------------------"
done
