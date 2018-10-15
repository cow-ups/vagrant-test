#!/bin/bash
# 设置时间为东八区标准时间

# 编辑时间配置文件
sudo touch /etc/sysconfig/clock
sudo echo 'ZONE="Asia/Shanghai"' > /etc/sysconfig/clock
sudo echo 'UTC=false' >> /etc/sysconfig/clock
sudo echo 'ARC=false' >> /etc/sysconfig/clock

# linux的时区设置为上海时区
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# 安装ntp服务
sudo yum install ntp -y

# 校准时间
sudo ntpdate 192.43.244.18

# 设置硬件时间和系统时间一致并校准
sudo /sbin/hwclock --systohc