#! /bin/bash

#prints a message
echo "Hello, World!"
echo "My name is Mikolaj"
echo ""

#setting and using a variable
city="Krakow"
echo "I live in $city"
echo "I love ${city/Krakow/Poznan}" #substituting part of the string
echo "I love ${city:0:4}"   #slicing the string
echo ${#city} #length of the string
echo ${city:-"Default City"} #default value if variable is not set
echo ""

#reading user input
read -p "What is your favorite city? " favorite_city #saving user input to a variable
echo "WOW, I also like ${favorite_city:-"nothing"}!"
echo ""