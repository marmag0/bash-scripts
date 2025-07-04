#! /bin/bash

#functions declaration I - basic return
function sayHello1() {
    echo "Hello $1 $2!"
    return 0    
}

#functions usage and return catch
sayHello1 "John" "Doe"
exit_code=$?
echo "Exit code was: $exit_code"
echo ""

#function declaration II - echo return
function sayHello2() {
    echo "Hello $1 $2!"
}
full_name=$(sayHello2 "Jo" "Kowalski")
full_name=${full_name#"Hello "} #slice to remove the Hello part
echo $full_name


