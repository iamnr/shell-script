#!bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
PATH=/home/centos/shell-script/LogsFolder
LOGFILE=$PATH/$SCRIPT_NAME-$DATE.log

echo "$LOGFILE"
