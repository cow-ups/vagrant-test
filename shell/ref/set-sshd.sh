#!/bin/bash
# ����ssh��½��ʽ������Կ��½��Ϊ�˺ŵ�½

# ���������½��ʽ
sudo sed -ie 's/PermitRootLogin no/#PermitRootLogin no/g' /etc/ssh/sshd_config
sudo sed -ie 's/#PermitRootLogin yes/PermitRootLogin yes/g' /etc/ssh/sshd_config

sudo sed -ie 's/PasswordAuthentication no/#PasswordAuthentication no/g' /etc/ssh/sshd_config
sudo sed -ie 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config

# ����ssh���������������
sudo systemctl restart sshd.service
