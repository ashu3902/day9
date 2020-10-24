#!/bin/bash -x
echo "Welcome to Employee wage computation problem"
isPresent=1
wageRate=20
empHr=0
days=0
day=1
salary=0
total_sal=0
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

getWorkHrs()
{
echo "Daily wages               total wages   "
while [[ $days -lt 20  &&  $empHr -lt 100 ]]
do
	empcheck=$(($RANDOM%2+1))
	case $empcheck in
	1)
		empHr=$(( $empHr + 8 ))
		;;
	2)
		empHr=$(( $empHr + 4 ))
		;;
	esac
salary=$(( $empHr * $wageRate ))
	total_sal=$(( $total_sal + $salary ))
	((days++))
	echo "$salary                  $total_sal"
done
}
getWorkHrs
monthlywage=$(( $wageRate * $workingdays ))
echo "monthly wages are: $monthlywage"
echo "Working hrs= $empHr"
