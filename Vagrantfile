# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<-SHELL
  /bin/sh /vagrant/install-wget.sh
SHELL

# 强制编码格式
ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure("2") do |config|
  (0..0).each do |i|
    config.vm.define "node-#{i}" do |node|
      # 设置虚拟机的Box
      node.vm.box = "centos/7"

      # 设置虚拟机的用户
#      node.ssh.username = "vagrant"
      # 设置虚拟机的密码
#      node.ssh.password = "vagrant"
#     node.ssh.insert_key = true
#     node.ssh.private_key_path="F:\Tools\VirtualMachines\Config\vagrant-test\.vagrant\machines\node-0\virtualbox\private_key"
#     node.ssh.dsa_authentication=false

      # 开机超时时间设置（默认值：300s）
      node.vm.boot_timeout = 3000

      # 设置虚拟机Box启动时是否检查更新（默认值：true）
      node.vm.box_check_update = false

      # 设置box的路径（可以为数组格式[url_1,url_2,...]），可以是网络路径，也可以是本地路径
#     node.vm.box_url = "file:///F:\Tools\VirtualMachines\VBoxes\boxes\package.box"

      # 设置优雅的关闭虚拟机的超时时间（默认值：60s）
#     node.vm.graceful_halt_timeout = 60

      # 设置主机与虚拟的共享目录，第一个参数是主机目录，相对路径表示项目根目录下对应的目录；第二个参数是虚拟对应的目录，必须为绝对路径，若没有该目录，虚机启动时会自动创建
#      #node.vm.synced_folder ".vagrant\machines\node-0\virtualbox", "/home/vagrant", disabled: true

      # 设置虚拟机的主机名
      node.vm.hostname = "node-#{i}"

      # 设置虚拟机的IP
      node.vm.network "private_network", ip: "192.168.100.10#{i}"

      # 开机执行脚本
      node.vm.provision "shell", path: "shell/docker-service-config.sh"
      #node.vm.provision "shell", inline: $script

      # VituralBox相关配置
      node.vm.provider "virtualbox" do |v|
        v.name = "node-#{i}"
	v.memory = 1024
	v.cpus = 1
      end
    end
  end
end
