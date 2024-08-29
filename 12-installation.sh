#!/bin/bash 


USERID=$(id -u)

#echo "user id is :$USERID"

if [$USERID -ne 0]
then 
    echo "plese run this script through root previlages"
fi

dnf install git -y 
