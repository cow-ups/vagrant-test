#!/bin/bash
# ��װ docker

# ��װ docker ����
sudo yum -y install docker
# ���� Harbor ֤��
sudo mkdir -p /etc/docker/certs.d/harbor.huan.tv
sudo cp /vagrant/conf/harbor/harbor.huan.tv.crt /etc/docker/certs.d/harbor.huan.tv
# ���� docker ����
sudo systemctl start docker.service