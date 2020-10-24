#!/bin/bash -x
echo "Welcome to Employee wage computation problem"
isPresent=1
wageRate=20
dayHr=8
randomCheck=$(( RANDOM%2 ))
if [[ $isPresent -eq $randomCheck ]]
then
    echo "Employee is present"
else
     echo "Employee is not present"
fi
dailyWage=$(( $wageRate * $dayHr ))
echo "Daily employee wage = $dailyWage"
