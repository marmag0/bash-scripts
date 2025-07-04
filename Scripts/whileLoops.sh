#! /bin/bash

#while loop
while IFS= read -r current_line
do
    printf "%s\n" "$current_line"
done < "test.txt"
