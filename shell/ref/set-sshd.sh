#!/bin/bash
# 调整ssh登陆方式，由密钥登陆改为账号登陆

# 设置密码登陆方式
sudo sed -ie 's/PermitRootLogin no/#PermitRootLogin no/g' /etc/ssh/sshd_config
sudo sed -ie 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config

sudo sed -ie 's/PasswordAuthentication no/#PasswordAuthentication no/g' /etc/ssh/sshd_config
sudo sed -ie 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config

# 重启ssh服务或重启服务器
sudo systemctl restart sshd.service
