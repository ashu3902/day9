#!/bin/bash -x
echo "Welcome to Employee wage computation problem"
isPresent=1
wageRate=20
dayHr=12
workingdays=20
T=$(($RANDOM%8+1))
echo "1. empAttendance 2.daily wage 3.Part time wage"
read n
case $n in
        1)
	randomCheck=$(( RANDOM%2 ))
	if [[ $isPresent -eq $randomCheck ]]
	then
    		echo "Employee is present"
	else
     		echo "Employee is not present"
	fi
	;;
	2)
	dailyWage=$(( $wageRate * $dayHr ))
	echo "Daily employee wage = $dailyWage"
	;;
	3)
	partTime=$(( $T * $wageRate ))
	echo "For $T hours wages are: $partTime"
	;;
esac
monthlywage=$(( $wageRate * $workingdays ))
echo "monthly wage = $monthlywage"
