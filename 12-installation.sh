#!/bin/bash 


USERID=$(id -u)

#echo "user id is :$USERID"

if [ $USERID -ne 0 ]
then 
    echo "plese run this script through root previlages"
    exit 1
fi

dnf list installed git

if [ $? -ne 0 ]
then 
  echo "git is not installed, do install it"
   dnf install git -y
   if [ $? -ne o ]
   then echo "git installation is failure"
         exit 1
   else 
         echo "git installation is success"
   fi  

else 
   echo "git is already istalled, no worries"
fi   



dnf list installed mysql

if [ $? -ne 0 ]
then 
  echo "mysql is not installed, do install it"
   dnf install mysql -y
   if [ $? -ne o ]
   then echo "mysql installation is failure"
         exit 1
   else 
         echo "mysql installation is success"
   fi  

else 
   echo "mysql is already istalled, no worries"
fi   