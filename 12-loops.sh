#!bin/bash

DATE=$(date +%F)
LOGSDIR=/home/centos/shellscript-logs
LOGFILE=$LOGSDIR/$0-$DATE.log
USERID=$(id -u)

if [ $USERID -ne 0 ]
then    
    echo "Run with root access"
    exit 1
fi

VALIDATE(){
    if [ $i -ne 0 ]
    then 
        echo " Installing $1"
        exit 1
    else 
        echo " $1 is in not installed"
    fi
}


for i in $@
do
    yum list installed $i &>>$LOGFILE

    if [ $? -ne 0 ]
    then    
        echo "$i is not installed so installing $i"
        yum install $i -y &>>$LOGFILE
        VALIDATE $? "$i"
    else
        echo "$i is already installed"
    fi