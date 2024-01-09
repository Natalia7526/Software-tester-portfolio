#!/bin/bash


# Write a shell script that prompts the user for a name of a file or directory and reports if it is a
# regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

#!/bin/bash

# Prompt the user for a file or directory
read -p "Enter the name of a file or directory: " user_input

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

