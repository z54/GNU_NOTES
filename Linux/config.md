# Configuration

## 目录颜色与文件颜色区分

[Mac终端ls命令区分文件夹和文件的颜色 - 简书](https://www.jianshu.com/p/488869d76447)
```
1.vim ~/.bash_profile
2.增加（先按i，然后粘贴）
    #set color
    export CLICOLOR=1
    export LSCOLORS=gxfxaxdxcxegedabagacad
    3.保存（先按esc，然后输入:wq）
4.source ~/.bash_profile
```

## new User

`useradd testuser`  创建用户testuser

`passwd testuser`  给已创建的用户testuser设置密码
说明：新创建的用户会在/home下创建一个用户目录

`testuser
usermod --help`  修改用户这个命令的相关参数

`userdel testuser`  删除用户

`testuser
rm -rf testuser`  删除用户

`/home/testuser`所在目录

`chown testuser:testuser testuser` 放开用户目录权限给用户

```bash
# new user
useradd testuser
passwd testuser
chown testuser:testuser testuser
```

## 默认启动系统顺序修改  

明确开机时grub界面Windows选项处于第几行（n）

修改配置文件 `sudo vi /boot/grub/grub.cfg`

```bash
set default="0"
# 将开机启动项中Windows选项的序号n减1并填入
set default="n-1"
# 修改并退出重启
```

## XXX is not in the sudoer file.This incident will be reported.

```bash
su
echo 'username ALL=(ALL) ALL' >> /etc/sudoers
```

- [xxx 用户不再sudoer 文件中 此事将被报告。](https://blog.csdn.net/u010278862/article/details/73240551?locationNum=8&fps=1)

## 禁止用户访问指定目录，执行指定命令

- 用root帐号修改/etc/sudoers表

  - 禁止执行ls命令

    `username ALL=!/bin/ls`

- [如何禁止某个linux用户访问某些文件夹及执行某些命令_百度知道](https://zhidao.baidu.com/question/176813836593321564.html)