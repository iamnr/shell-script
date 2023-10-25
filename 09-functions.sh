#!bin/bash



USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "Run with root access"
    
else
    echo "Sucess"
fi


