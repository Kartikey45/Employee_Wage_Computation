#!/bin/bash -x 

echo "Welcome to Employee Wage Computation"

#INITIALIZE THE CONSTANT VARIABLES
WAGE_PER_HOUR=20
IS_PART_TIME=1
IS_FULL_TIME=2

#CHECK THE CONDITIONS - IF AN EMPLOYEE IS A PART TIME OR FULL TIME EMPLOYEE
if (( $(( RANDOM%3 ))==$IS_FULL_TIME ))
then
	echo "This is a full time employee"
	hoursPerDay=8
elif(( $(( RANDOM%3 ))==$IS_PART_TIME ))
then
	echo "This is a part time employee"
	hoursPerDay=4
else
	echo "Employee is absent"
	hoursPerDay=0
fi

#CALCULATE AND DISPLAY DAILY EMPLOYEE WAGE
echo "Daily Employee Wage :"
dailyEmployeeWage=$(($WAGE_PER_HOUR*$hoursPerDay))
echo "$dailyEmployeeWage rs. per day"


