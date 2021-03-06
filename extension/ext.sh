#!/bin/bash
#
# @author zhangqiang<komazhang@foxmail.com>
# @date   2015.06.25 13:58:36
#
# this is the extension install script
# u have to change it to adapt to ur own env
#
#remove the read command backspace exception
stty erase '^H'

if [ ! $SCRIPT_PATH ]; then
    echo -e "##-------------------------------\n"
    echo " please use it correct "
    echo -e "\n##-------------------------------"
    exit 1
fi

echo -e $TOP_MARK
echo " for now, this script only can install the nginx and php extension. "
echo " install nginx extension   --- 1 "
echo " install php extension     --- 2 "
echo " the extension source code dir is in ${SCRIPT_EXT_PATH} "
echo -e $BOTTOM_MARK

read -p " please select whitch item of extension u want to install:  " itemIdx

SRC_EXT_PATH=${SCRIPT_EXT_PATH}/extpackage
export SRC_EXT_PATH
if [ ! -d ${SRC_EXT_PATH} ];then
    mkdir $SRC_EXT_PATH
fi

if [ "$itemIdx" -eq 1 ];then
    "$SCRIPT_EXT_PATH"/enginex_ext.sh
elif [ "$itemIdx" -eq 2 ];then
    "$SCRIPT_EXT_PATH"/php_ext.sh
    extpath="$SCRIPT_EXT_PATH"/extpackage/php
else
    echo -e $TOP_MARK
    echo " please input a right num "
    echo -e $BOTTOM_MARK
    exit 1
fi
exit 0

##---------------------------------------------------EOF
