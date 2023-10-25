#!bin/bash


USERID=$(id -u)

if ($USERID -ne 0)
then 
    echo "Please run with root access"
else
    echo "Root access"
fi 
