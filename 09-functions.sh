#!bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
PATH=/home/centos/shell-script/logsfolder
LOGFILE=$PATH/$SCRIPT_NAME-$DATE.log

#echo "$LOGFILE"

yum install mysql -y 

echo "$?"

yum install posddtfix -y 

echo "$?"




