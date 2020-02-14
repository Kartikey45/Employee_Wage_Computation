#!/bin/bash -x 

echo "Welcome to Employee Wage Computation"

#INITIALIZE THE VARIABLE
IS_PRESENT=1

#CHECK THE CONDITIONS AND DISPLAY THE ATTENDANCE
echo "Attandance of Employee :"
if (( $(( RANDOM%2 ))==$IS_PRESENT ))
then
	echo "Employee is present"
else
	echo "Employee is Absent"
fi
