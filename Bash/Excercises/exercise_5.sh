#!/bin/bash


#Write a shell script that displays "man", "bear", "pig", "dog", "cat", and "sheep" to the screen with
#each appearing on a separate line. Try to do this in as few lines as possible.

words='man bear pig dog cat sheep'

for word in $words
do
    echo $word
done

