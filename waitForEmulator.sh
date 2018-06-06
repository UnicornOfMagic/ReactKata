#!/bin/sh
while adb devices -l
do
   echo running "adb devices -l"
   output=$(adb devices -l)
   if [ $(adb devices -l | wc -l)  -gt 2 ]
   then
    break;
   fi
   sleep 5;
done
