#!/bin/bash -x 

echo "Welcome to Employee Wage Computation"

#INITIALIZE THE VARIABLE
IS_PRESENT=1
WAGE_PER_HOUR=20

#CHECK THE CONDITIONS AND DISPLAY THE ATTENDANCE
echo "Attandance of Employee :"
if (( $(( RANDOM%2 ))==$IS_PRESENT ))
then
	echo "Employee is present"
	hoursPerDay=8
else
	echo "Employee is Absent"
	hoursPerDay=0
fi

#CALCULATE DAILY EMPLOYEE WAGE
echo "Daily Employee Wage :"
dailyEmployeeWage=$(($WAGE_PER_HOUR*$hoursPerDay))
echo "$dailyEmployeeWage rs. per day"
