#!/bin/bash
echo $1
input=`echo $* |awk '{print $1}'`
filename=`echo $input | awk -F : '{print $1}'`
line=`echo $input | awk -F : '{print $2}'`
if [ "x$line"  = "x" ];then
vim $filename
else
vi $filename +$line
fi
