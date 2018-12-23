# time: 1812220024
# system: Debian 9
# test mactine ip address status: ok
# result：ok

echo 'deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free' > /etc/apt/sources.list

apt update
apt dist-upgrade -y

apt install python-pip -y
pip install shdowsocks

wget --no-check-certificate https://raw.githubusercontent.com/teddysun/shadowsocks_install/master/shadowsocks-libev-debian.sh
chmod +x shadowsocks-libev-debian.sh
./shadowsocks-libev-debian.sh 2>&1 | tee shadowsocks-libev-debian.log
```