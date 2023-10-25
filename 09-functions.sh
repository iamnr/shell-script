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
        exit 1
    else
        echo "Sucess"
    fi
}


USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Run with root access"
    
else
    echo "Sucess"
fi

yum install mysql -y &>>$LOGFILE

VALIDATE $? "Installing Mysql"




