# README

## shadowsocks

```bash
apt update
apt dist-upgrade

apt install python-pip
pip install shdowsocks

echo sshd: ALL >> /etc/hosts.allow
service sshd restart

```

echo -e {"\n" \
    "server":"0.0.0.0","\n" \
    "server_port":8388,"\n" \
    "local_port":1080, "\n" \
    "password":"123!@#","\n" \
    "timeout":600,"\n" \
    "method":"aes-256-cfb","\n" \
    "fast_open":false"\n"\
} > /etc/shadowsocks/config.json 

```bash
ssserver -h # 检查ssserver命令状态
```

## ssh

## git

[搭建Git服务器 - 廖雪峰的官方网站](https://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000/00137583770360579bc4b458f044ce7afed3df579123eca000)

```bash
su
apt-get install git
adduser git
gituserpwd
```