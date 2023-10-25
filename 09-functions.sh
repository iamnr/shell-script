#!bin/bash

VALIDATE(){

    if [ $1 -ne 0]
    then
        echo "$2 failed"
    else
        echo "$2 sucess"
    fi 
}


USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo "Please run with root access"
    exit 1
fi 

yum install mysql -y

VALIDATE $? "Installing MySQL"

