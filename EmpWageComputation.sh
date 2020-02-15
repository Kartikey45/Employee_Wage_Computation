#!/bin/bash -x 

echo "Welcome to Employee Wage Computation"

#INITIALIZE THE VARIABLES
WAGE_PER_HOUR=20
IS_PART_TIME=1
IS_FULL_TIME=2
checkEmp=$(( RANDOM%3 ))

#CHECK THE CONDITIONS - IF AN EMPLOYEE IS A PART TIME OR FULL TIME EMPLOYEE
case $checkEmp in	
	$IS_FULL_TIME)
		echo "This is a Full time Employee."
		hoursPerDay=8
		;;
	$IS_PART_TIME)
		echo "This is a Part time Employee."
		hoursPerDay=4
		;;
	*)
		echo "This is neither a Full time nor a Part time Employee."
		hoursPerDay=0
		;;
esac

#CALCULATE AND DISPLAY DAILY EMPLOYEE WAGE
echo "Daily Employee Wage :"
dailyEmployeeWage=$(($WAGE_PER_HOUR*$hoursPerDay))
echo "$dailyEmployeeWage rs. per day"


