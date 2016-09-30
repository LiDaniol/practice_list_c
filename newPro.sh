#!/bin/bash
#获取当前路径
CMD_PATH=`dirname $0`
#获取绝对路径
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
SHELL_FOLDER_T=$(dirname $(readlink -f "$0"))
DBG=dbg.h
#$1是第一个参数
if [ x$1 != x ]
then
    mkdir $1;
    cd $1;
    touch README Makefile;
    cp $SHELL_FOLDER/$DBG $SHELL_FOLDER/$1/;
else
    echo "undefined argment";
fi
