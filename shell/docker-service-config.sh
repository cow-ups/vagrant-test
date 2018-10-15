#!/bin/bash
# 安装系统软件

# path of ref scripts
basepath='/vagrant/shell/ref'

# update yum
/bin/sh ${basepath}/update_yum.sh

# set sshd | private key -> account
#/bin/sh ${basepath}/set-sshd.sh

# set time
/bin/sh ${basepath}/set-time.sh

# install netstat
/bin/sh ${basepath}/install-nettools.sh

# install ifconfig
/bin/sh ${basepath}/install-ifconfig.sh

# install wget
/bin/sh ${basepath}/install-wget.sh

# install docker and start it
/bin/sh ${basepath}/install-docker.sh