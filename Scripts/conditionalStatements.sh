#! /bin/bash

#if statements
city="Florence"
if [ $city == "Florence" ]
then
    echo "Florence is a beautiful city!"
elif [ $city == "Krakow" ]
then
    echo "Krakow is a beautiful city!"
elif [ $city == "Warsaw" ]
then
    echo "Warsaw is a beautiful city!"
elif [ $city == "Poznan" ]
then
    echo "Poznan is a beautiful city!"
else
    echo "I don't know much about $city"
fi
echo ""


#comparing strings
a="Hello"
b="World"

if [ $a == $b ]
then
    echo "Strings are equal"
elif [ $a > $b ]
then
    echo "$a is greater than $b"
else
    echo "$a is less than $b"
fi
echo ""

#comparing numbers
#-gt (greater than), -lt (less than)
#-eq (equal), -ne (not equal)
#-gte (greater than or equal), -lte (less than or equal)

voting_age=18
read -p "Enter your age: " age

if [ $age -gt $voting_age ]
then
    echo "You are allowed to vote!"
elif [ $age -eq $voting_age ]
then
    echo "Spot on! You are exactly 18! You can vote!"
else
    echo "You are not allowed to vote!"
fi
echo ""