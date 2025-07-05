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
echo ""

#adding two numbers (in arythmetic sense)
a=10
b=20
echo $(($a + $b))
echo ""

function sum_or_substract() {
    if [ $2 == '+' ]
        then
            echo $(($1 + $3))
    elif [ $2 == '-' ]
        then
            echo $(($1 - $3))
    else
        echo "Invalid operation"
    fi
}
sum_or_substract  1 - 5
echo ""