#!/bin/bash -x
echo "Welcome to Employee wage computation problem"
isPresent=1
wageRate=20
empHr=0
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
echo "Wages "
while [[ $days -lt 20  &&  $emphr -lt 100 ]]
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
((days++))
echo "$salary "
done
monthlywage=$(( $wageRate * $workingdays ))
echo "monthly wage = $monthlywage"

getWorkHrs()
{
while [[ $days -lt 20  &&  $emphr -lt 100 ]]
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
done
}
getWorkHrs
echo "Total Working Hours are $empHr"
