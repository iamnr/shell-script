#!bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
PATH=/home/centos/shell-script/logsfolder
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

echo "$?"

yum install posddtfix -y 

echo "$?"




