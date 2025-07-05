#! /bin/bash

#for loop
#for [changing_var] in [list/array]
for names in "John" "Jane" "Doe":
do
    echo "Good morning $names"
done

count=1
for file in `ls MyScripts`
do
    echo "File $count: $file"
    count=$((count + 1))
done

#while loop
#while [condition] | continues while condtion == true
counter=0
while [ $counter -lt 5 ]
do
    touch "file-$counter.txt"
    counter=$((counter + 1))
    sleep 3
done

#until loop
#until [condition] | continues while condition == false
until [ $counter -eq 0 ]
do
    echo "Counter is $counter"
    counter=$((counter - 1))
    sleep 1
done


