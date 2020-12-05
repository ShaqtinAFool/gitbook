#/bin/bash

### define
user=poc
master_ip="10.0.0.5" && master_hostname="k8s-master"
node1_ip="10.0.0.6" && node1_hostname="k8s-node1"
node2_ip="10.0.0.7" && node2_hostname="k8s-node2"
proxy_ip="10.0.0.4" && proxy_hostname="squid" && proxy_port=80

### enviroment
timedatectl set-timezone Asia/Taipei
LANG=en_US.UTF-8

### internet connection
echo "proxy=http://$proxy_hostname:$proxy_port" >> /etc/yum.conf
echo "https_proxy = http://$proxy_server:$proxy_port" >> /etc/wgetrc
echo "http_proxy = http://$proxy_server:$proxy_port" >> /etc/wgetrc

### update parameter
echo "alias vi='vim'" >> ~/.bashrc
echo "$user ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config
source ~/.bashrc

## DNS
echo "==== DNS... ===="
echo "$proxy_ip $proxy_hostname" >> /etc/hosts
echo "$master_ip $master_hostname" >> /etc/hosts
echo "$node1_ip $node1_hostname" >> /etc/hosts
echo "$node2_ip $node2_hostname" >> /etc/hosts

### systemctl
echo "==== systemctl... ===="
systemctl stop firewalld && systemctl disable firewalld

### yum default
echo "==== yum default... ===="
yum update -y > /dev/null 2>&1
yum install telnet -y > /dev/null 2>&1
yum install traceroute -y > /dev/null 2>&1
yum install nfs-utils -y > /dev/null 2>&1