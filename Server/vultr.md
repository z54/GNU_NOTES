# 可用ss，备份勿动

```
#!/bin/sh

# NOTE: This is an example that sets up SSH authorization. To use it, you'd need to replace "ssh-rsa AA... youremail@example.com" with your SSH public.
# You can replace this entire script with anything you'd like, there is no need to keep it

echo 'deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free' > /etc/apt/sources.list

apt update
apt dist-upgrade
apt install ssh

mkdir -p /root/.ssh
chmod 600 /root/.ssh
echo ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDWhpsKJaZzmRaVkaZnf6nr+L+vV5IpMwOYKgY7IjsQp1ESUIo1XeuOkU4s0vTkAyqyTxpJ29vV8biV2mN2wH7GDgltYoL+aaEzeR40wGfLtbOV/wj25AgX4sePyZdMGeFQGQlLxlTEOqjljNecXfiHmv8E/HowCz31BxKAekwBs4InKS4u2XPLQ5wkZS3wFcWspMWarIu7cyZbJIEpf66mzSiRi1pfTjYnOQTRxDP6TZ7VC1TK7r3jBuH2cMpPmuqsWzyy5izGpkhN6YWcJQBAeh/juEutSUbaAmA4jjoF0Lr8L3TiD+gjjLbI4l4QkA4bNg+5ZyOtBWvzz77oPKzn sun@DESKTOP-TT6ROEI
 > /root/.ssh/authorized_keys
chmod 700 /root/.ssh/authorized_keys

apt install python-pip -y
pip install shadowsocks

wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev-debian.sh
chmod +x shadowsocks-libev-debian.sh
./shadowsocks-libev-debian.sh 2>&1 | tee shadowsocks-libev-debian.log

echo -e {"\n" \
    "server":"0.0.0.0","\n" \
    "server_port":8388,"\n" \
    "local_port":1080, "\n" \
    "password":"123!@#","\n" \
    "timeout":600,"\n" \
    "method":"aes-256-cfb","\n" \
    "fast_open":false"\n"\
} > /etc/shadowsocks/config.json
```