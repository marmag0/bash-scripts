#! /bin/bash

#setting variables
username="admin"
echo username #prints a string literal "username"
echo $username #prints the value of the variable username

#passing data to the script
#./script.sh [value 1] [value 2] [value 3]...
echo "The first parameter is: $1"
echo "The second parameter is: $2"
#etc