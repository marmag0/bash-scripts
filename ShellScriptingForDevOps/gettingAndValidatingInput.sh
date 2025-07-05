#! /bin/bash

#getting standard input from user | -p == prompt user for input
read -p "enter your desired name: " username
echo "You've chosen $username as your username!"

#exit codes
#successful exit code is 0
#unsuccessful exit code is other than 0
#$? - exit code of last command


#if statement
exit_code=$?
if [ $exit_code == 0 ]
then 
    echo "Last command was executed successfully"
else
    echo "Last command was executed unsuccessfully. The exit code was $exit_code"
fi

