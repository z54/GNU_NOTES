# Initial

1. 配置源(两种方式)

	1. `sudo vi /etc/apt/source.list`

	2. `sudo echo 'deb http://mirrors.ustc.edu.cn/debian stable main contrib non-free' > /etc/apt/sources.list`

2. 更新源

	`sudo apt update`

3. 更新系统及软件 

	`sudo apt dist-upgrade`

4. 安装aptitude
   
   `sudo apt install aptitude`

5. 安装x-window
   
   `sudo aptitude install x-window-system-core`