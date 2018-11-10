# Linux

## Initial

1. 配置源

	`sudo vi /etc/apt/source.list`

	`sudo echo 'deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free' > /etc/apt/sources.list`

2. 更新源

	`sudo apt update`

3. 更新系统及软件 

	`sudo apt dist-upgrade`

4. 安装aptitude
5. `sudo apt install aptitude`
6. `sudo aptitude install x-window-system-core`

### 默认启动系统顺序修改  

明确开机时grub界面Windows选项处于第几行（n）

修改配置文件	`sudo vi /boot/grub/grub.cfg`

```bash
set default="0"
# 将开机启动项中Windows选项的序号n减1并填入
set default="n-1"

# 修改退出
```

## Configuration

### User

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

### XXX is not in the sudoer file.This incident will be reported.

```bash
su
echo 'username ALL=(ALL) ALL' >> /etc/sudoers
```

[xxx 用户不再sudoer 文件中 此事将被报告。](https://blog.csdn.net/u010278862/article/details/73240551?locationNum=8&fps=1)

### 禁止用户访问指定目录，执行指定命令

- 用root帐号修改/etc/sudoers表
    - 禁止执行ls命令
    `username ALL=!/bin/ls`

[如何禁止某个linux用户访问某些文件夹及执行某些命令_百度知道](https://zhidao.baidu.com/question/176813836593321564.html)

## Update

### aptitude

- 命令行
/ |/
-|-
更新可用的包列表 | `aptitude update`
升级可用的包 | `aptitude upgrade`
将系统升级到新的发行版 | `aptitude dist-upgrade`
安装包 | `aptitude install pkgname`
删除包 | `aptitude remove pkgname`
删除包及其配置文件 | `aptitude purge pkgname`
搜索包 | `aptitude search string`
显示包的详细信息 | `aptitude show pkgname`
删除下载的包文件 | `aptitude clean`
仅删除过期的包文件 | `aptitude autoclean`

## Usage

### find

### 压缩

- 解压
  `tar -xvf file.tar`
  解压 tar包

- 压缩
  `tar -cvf jpg.tar *.jpg`
  将目录里所有jpg文件打包成tar.jpg

  ### sed

## Reference

[linux下用aptitude管理软件包](https://blog.csdn.net/hongkangwl/article/details/16113505)

[Linux下的tar压缩解压缩命令详解](
https://www.cnblogs.com/manong--/p/8012324.html)

[Win7和Ubuntu共存，默认启动系统修改](http://sixipiaoyang.blog.163.com/blog/static/623235882013102655819604/)