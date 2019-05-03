#!/bin/sh

# NOTE: This is an example that sets up SSH authorization. To use it, you'd need to replace "ssh-rsa AA... youremail@example.com" with your SSH public.
# You can replace this entire script with anything you'd like, there is no need to keep it

# 验证时间20190302
# 验证内容，ss可用

echo 'deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free' > /etc/apt/sources.list

apt update
apt dist-upgrade
apt install ssh

mkdir -p /root/.ssh
chmod 600 /root/.ssh
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDRtO1Lpk6gQ6sUlARPvj+Ai6L3kYepxttljPqtXiq0xy8RANDRIzEwXODT5A1bbTMJJppyAeMP+ELtKkSH5Rz5JVNpOZXFF5+ny89TqHruFfWbbFBfTnoH0dKJcCqzvORUrOR4nmz+BqIZV+Q0Zz2VqaI6otLUGxTemdeZ7ouSLUW9C5FnwTytmUam7OYCydza3jjl2irV/jX6jPLxnIDuVsZ+MZd3fBK6xRYDg6+mQwoOD1t+VZCoRMikxNcBHQN029ER+AZ1zOPy4cJDOcHsq0UFcZCsD2QJ0STEoNdmnVQPJSLgb9IbrZqKEr5IsLcckMdWgGKlIhMK/S88aOYP zach@zachs-MBP >> /root/.ssh/authorized_keys
chmod 700 /root/.ssh/authorized_keys

apt install python-pip
pip install shadowsocks

wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev-debian.sh
chmod +x shadowsocks-libev-debian.sh
./shadowsocks-libev-debian.sh 2>&1 | tee shadowsocks-libev-debian.log