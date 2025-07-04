#! /bin/bash

file="test.txt"

#checking if sth is a file | -f == file
function is_file() {
    if [ -f $1 ]
    then
        echo "$1 is a file."
    else
        echo "$1 is not a file."
    fi
}
is_file $file

#checking if sth exists | -e == exists
function exists() {
    if [ -e $1 ]
    then
        echo "$1 exists."
    else
        echo "$1 dose not exists."
    fi
}
exists $file

#checking if sth is a directory | -d == directory
function is_dir() {
    if [ -e $1 ]
    then
        echo "$1 is a directory."
    else
        echo "$1 is not a directory."
    fi
}
is_dir $file
echo ""

#function
function show_content() {
    if [ -f $1 ]
    then
        cat $1
    elif [ -d $1 ]
    then
        ls -la $1
    elif [ -e $1 ]
    then
        echo "$1 exists but is neither a file nor a directory."
    else
        echo "$1 does not exist."
    fi
}
show_content "test.txt"
echo ""