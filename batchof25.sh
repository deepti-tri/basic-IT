#!/bin/bash

#Author : Deepti Trivedi
#Date : 02.16.2022
#Title : Linux Module Challenge
#Declared variables : x, y

#Read the user name
#echo "What's your name?"
#read USER
USER=deeps
DATE=`date`
echo "Hello, $USER!"
echo "It's $DATE."

#Check to see if file exists with counter value
if [ ! -f "/home/ec2-user/counter.txt" ] ;
then
   y=1
else
   y=`cat /home/ec2-user/counter.txt`
fi

#Create the batch of 25 files
for (( x=1 ; x<=25; x++ ));
do
    touch deeps_$y
    ((y++))
done

#Store the value of y in file
echo $y > counter.txt
