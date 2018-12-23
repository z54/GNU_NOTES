# README

1. ss server
2. add the user named "git"
3. config the git remote
4. ssh public key
5. aliyun change the domain
6. nginx

# ip history

45.32.84.105 no
108.61.206.237 no
45.76.172.139 ok
207.246.127.63

## shadowsocks

```bash

echo 'deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free' > /etc/apt/sources.list

apt update
apt dist-upgrade

apt install python-pip
pip install shdowsocks

wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev-debian.sh
chmod +x shadowsocks-libev-debian.sh
./shadowsocks-libev-debian.sh 2>&1 | tee shadowsocks-libev-debian.log
```

## git

[搭建Git服务器 - 廖雪峰的官方网站](https://www.liaoxuefeng.com/wiki/0013739516305929606dd18361248578c67b8067c8c017b000/00137583770360579bc4b458f044ce7afed3df579123eca000)

```bash
su
apt-get install git
adduser git
```

```
root@vultr:~# adduser git
Adding user `git' ...
Adding new group `git' (1000) ...
Adding new user `git' (1000) with group `git' ...
Creating home directory `/home/git' ...
Copying files from `/etc/skel' ...
New password: 
Retype new password: 
passwd: password updated successfully
Changing the user information for git
Enter the new value, or press ENTER for the default
        Full Name []: 
        Room Number []: 
        Work Phone []: 
        Home Phone []: 
        Other []: 
Is the information correct? [Y/n] 
root@vultr:~# ls /home
git
root@vultr:~# ]
```

## git remote

```
# server
cd /home/git
git init --bare Notes.git
git init --bare GNU.git
<<<<<<< HEAD

chown -R git:git Notes.git
chown -R git:git IMC.git
chown -R git:git GNU.git
```

```local
git fetch
git ps
=======
git init --bare IMC.git
git init --bare tsinsen.git
>>>>>>> fa4a96ac7448b6ee5de8bda88c8d2f4b5a0465d8
```

## nginx

> nginx, HTTP和反向代理服务，也是一个IMAP/POP3/SMTP服务

1. service nginx start，启动服务

2. 重启服务

    ```
    /usr/sbin/nginx -t
    service nginx restart
    ```

## others

echo sshd: ALL >> /etc/hosts.allow
service sshd restart

echo -e {"\n" \
    "server":"0.0.0.0","\n" \
    "server_port":8388,"\n" \
    "local_port":1080, "\n" \
    "password":"123!@#","\n" \
    "timeout":600,"\n" \
    "method":"aes-256-cfb","\n" \
    "fast_open":false"\n"\
} > /etc/shadowsocks/config.json 

`ps aux | grep`

/usr/local/bin/ss-server -v -c /etc/shadowsocks-libev/config.json -f /var/run/shadowsocks-libev.pid