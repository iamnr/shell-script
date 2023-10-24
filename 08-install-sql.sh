#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Error : Run script with root access"
    exit 1

#else
 #   echo "Root access"
fi 

yum install mysql -y

if [ $? -ne 0 ]
then
    echo " Instalation failed"

else 
    echo "Installion sucess"
fi 


