#!bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
PATH=/home/centos/LogsFolder
LOGFILE=$PATH/$SCRIPT_NAME-$DATE.log

#echo "$LOGFILE"

VALIDATE(){

    if [ $1 -ne 0]
    then    
        echo "Failure"
    else
        "Sucess"
    fi
}

USERID=$(id -u)

if [ USERID -ne 0]
then
    echo "Run with root access"
    exit 1
fi

yum install mysql -y &>>$LOGFILE

validate $? "Installing Mysql"

