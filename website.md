# website

## Initial

1. 购买云服务器，域名

2. 解析域名到服务器IP地址

3. 服务器安装nginx

	> nginx, HTTP和反向代理服务，也是一个IMAP/POP3/SMTP服务

	1. service nginx start，启动服务

	2. 重启服务

		```
		/usr/sbin/nginx -t
		service nginx restart
		```

4. 网站上传到/var/www/html

5. https支持