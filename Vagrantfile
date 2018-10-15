# -*- mode: ruby -*-
# vi: set ft=ruby :

$script = <<-SHELL
  /bin/sh /vagrant/install-wget.sh
SHELL

# ǿ�Ʊ����ʽ
ENV["LC_ALL"] = "en_US.UTF-8"

Vagrant.configure("2") do |config|
  (0..0).each do |i|
    config.vm.define "node-#{i}" do |node|
      # �����������Box
      node.vm.box = "centos/7"

      # ������������û�
#      node.ssh.username = "vagrant"
      # ���������������
#      node.ssh.password = "vagrant"
#     node.ssh.insert_key = true
#     node.ssh.private_key_path="F:\Tools\VirtualMachines\Config\vagrant-test\.vagrant\machines\node-0\virtualbox\private_key"
#     node.ssh.dsa_authentication=false

      # ������ʱʱ�����ã�Ĭ��ֵ��300s��
      node.vm.boot_timeout = 3000

      # ���������Box����ʱ�Ƿ�����£�Ĭ��ֵ��true��
      node.vm.box_check_update = false

      # ����box��·��������Ϊ�����ʽ[url_1,url_2,...]��������������·����Ҳ�����Ǳ���·��
#     node.vm.box_url = "file:///F:\Tools\VirtualMachines\VBoxes\boxes\package.box"

      # �������ŵĹر�������ĳ�ʱʱ�䣨Ĭ��ֵ��60s��
#     node.vm.graceful_halt_timeout = 60

      # ��������������Ĺ���Ŀ¼����һ������������Ŀ¼�����·����ʾ��Ŀ��Ŀ¼�¶�Ӧ��Ŀ¼���ڶ��������������Ӧ��Ŀ¼������Ϊ����·������û�и�Ŀ¼���������ʱ���Զ�����
#      #node.vm.synced_folder ".vagrant\machines\node-0\virtualbox", "/home/vagrant", disabled: true

      # �����������������
      node.vm.hostname = "node-#{i}"

      # �����������IP
      node.vm.network "private_network", ip: "192.168.100.10#{i}"

      # ����ִ�нű�
      node.vm.provision "shell", path: "shell/docker-service-config.sh"
      #node.vm.provision "shell", inline: $script

      # VituralBox�������
      node.vm.provider "virtualbox" do |v|
        v.name = "node-#{i}"
	v.memory = 1024
	v.cpus = 1
      end
    end
  end
end
