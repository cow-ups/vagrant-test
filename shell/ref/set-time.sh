#!/bin/bash
# ����ʱ��Ϊ��������׼ʱ��

# �༭ʱ�������ļ�
sudo touch /etc/sysconfig/clock
sudo echo 'ZONE="Asia/Shanghai"' > /etc/sysconfig/clock
sudo echo 'UTC=false' >> /etc/sysconfig/clock
sudo echo 'ARC=false' >> /etc/sysconfig/clock

# linux��ʱ������Ϊ�Ϻ�ʱ��
sudo ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

# ��װntp����
sudo yum install ntp -y

# У׼ʱ��
sudo ntpdate 192.43.244.18

# ����Ӳ��ʱ���ϵͳʱ��һ�²�У׼
sudo /sbin/hwclock --systohc