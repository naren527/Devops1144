#!/bin/bash 


USERID=$(id -u)

#echo "user id is :$USERID"

if [ $USERID -ne 0 ]
then 
    echo "plese run this script through root previlages"
    exit 1
fi

dnf list installed gittt 

if [ $? -ne 0 ]
then 
  echo "git is not installed, do install it"
   dnf install gittt -y
   if [ $? -ne o ]
   then echo "git installation is failure"
         exit 1
   else 
         echo "git installation is success"
   fi  

else 
   echo "git is already istalled, no worries"
fi   
