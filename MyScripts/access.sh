#! /bin/bash

#plain text - no hashing or encryption :P
username="admin"
password="admin"

win1=42
win2=23

function authenticate() {
    read -p "Enter username: " username_input
    read -s -p "Enter password: " password_input
    if [ $username_input == $1 ] && [ $password_input == $2 ]
    then
        echo "Authentication successful! Welcome to the game!"
    else
        echo "Authentication failed! Wrong credentials!"
        exit 1
    fi
}

function game() {
    echo "Starting the game..."
    echo ""

    read -p "Try to guess the number between 1 and 100: " guess

    if [ $guess -eq $1 ] || [ $guess -eq $2 ]
    then
        echo "Congratulations! You guessed the number!"
    else
        echo "Wrong! Game over!"
    fi
}

authenticate $username $password
game $win1 $win2
