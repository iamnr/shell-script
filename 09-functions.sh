#!bin/bash


USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run with root access"
    exit 1
fi 

yum install mysql -y
