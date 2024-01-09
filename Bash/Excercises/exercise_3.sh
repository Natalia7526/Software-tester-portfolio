#!/bin/bash


#Store the output of the command "hostname" in a variable. Display "This script is running on _______." where "_______" is #the output of the "hostname" command. 

host_name=$(hostname)

echo "The script is running on ${host_name}."

