# ssh

[SSH公钥登录原理 - scofi - 博客园](https://www.cnblogs.com/scofi/p/6617394.html)

## 登录

- 密码登录

```bash
ssh username@domain
ssh root@100.100.100.100
```

- ssh key登录

```bash
# 在/root/.ssh目录下面产生一对密钥id_rsa和id_rsa.pub
ssh-keygen -t rsa -P ''
# ssh-keygen -t rsa -b 4096
```

> 一个公钥对应一个私钥

> id_rsa.pub的内容需要放入服务器的/home/git/.ssh/authorized_keys中

## 文件传输

- 上传`scp filename username@domain:directoryname`

- 下载`scp username@domain:directoryname/filename path` 

## 服务器管理

- 重启`service sshd restart	`

- `sudo service ssh stop` ，`sudo /usr/sbin/sshd -d`

- d是debug模式，服务器会向屏幕输出详细的debug信息
