#!/bin/bash
# 安装 docker

# 安装 docker 容器
sudo yum -y install docker
# 拷贝 Harbor 证书
sudo mkdir -p /etc/docker/certs.d/harbor.huan.tv
sudo cp /vagrant/conf/harbor/harbor.huan.tv.crt /etc/docker/certs.d/harbor.huan.tv
# 启动 docker 服务
sudo systemctl start docker.service