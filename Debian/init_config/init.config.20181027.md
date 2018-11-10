username: zach
pwd: 1

```shell
sudo su
echo 'deb http://mirrors.ustc.edu.cn/debian sid main non-free contrib
deb http://mirrors.163.com/debian sid main non-free contrib' > /etc/apt/sources.list
apt-get update
apt-get install aptitude
aptitude dist-upgrade

apt install ssh git

NormalUser=`cat /etc/group | grep 1000 | cut -d ":" -f 1`
echo -e User_Alias NORMAL = $NormalUser"\n"NORMAL  ALL = NOPASSWD: ALL > /etc/sudoers.d/$NormalUser && chmod 0440 /etc/sudoers.d/$NormalUser

```