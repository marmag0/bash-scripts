#! /bin/bash

# parameters
# $1 $2 ... accepts parameters passed to the script in form of ./script.sh param1 param2 ...
# $# - number of parameters passed to the script
# $@ - all parameters passed to the script

if [ $1 == "admin"]
then
    echo "Access granted!"
    echo "Let's start processing other parameters!"

    #for loop
    for param in $@
    do
        echo $param
    done

else
    echo "Wrong credentials! Access denied!"
fi