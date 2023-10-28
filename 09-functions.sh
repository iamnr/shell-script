#!bin/bash

DATE=$(date +%F)
LOGFILE=/tmp/$0-$DATE.log

VALIDATE(){

    if [ $1 -ne 0]
    then
        echo "$2 failed"
        exit 1
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

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing MySQL"

