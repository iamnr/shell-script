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
        echo -e "$2 Sucess"
    fi
}


yum install mysql -y 

VALIDATE $? "Installing Mysql"

yum install posddtfix -y 

VALIDATE $? "Installing Postfix"




