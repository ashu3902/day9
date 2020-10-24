#!/bin/bash -x
echo "Welcome to Employee wage computation problem"
isPresent=1
randomCheck=$(( RANDOM%2 ))
if [[ $isPresent -eq $randomCheck ]]
then
    echo "Employee is present"
else
     echo "Employee is not present"
fi
