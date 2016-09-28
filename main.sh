#!/bin/bash 

mkdir report
echo "执行的文件名：$0";
echo "第一个参数为：$1";

. ./conf.sh
. ./webpage.sh 
echo ${target_ip} "tested"
echo "main shell done"
exit 0