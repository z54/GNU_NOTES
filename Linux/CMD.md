# CMD

## dpkg

- 导出安装软件列表

```sh
dpkg --list | cut -f3 -d " " | tail +6
```

## 截取

`top`
- `tail`

`tail +6` 保留第六行到文件尾

## find

`find   path   -option   [   -print ]   [ -exec   -ok   command ]   {} \;`

example | \
-|-
`find . -name "*.c"` | 将目前目录及其子目录下所有延伸档名是 c 的文件列出来
`find . -type f` | 将目前目录其其下子目录中所有一般文件列出
`find . -ctime -20` | 将目前目录及其子目录下所有最近 20 天内更新过的文件列出

## 压缩

- 解压
  `tar -xvf file.tar`
  解压 tar包

- 压缩
  `tar -cvf jpg.tar *.jpg`
  将目录里所有jpg文件打包成tar.jpg

## sed

`sed [-hnV][-e<script>][-f<script文件>][文本文件]`

- 参数说明：

    - `-e<script>`或`--expression=<script>` 以选项中指定的script来处理输入的文本文件。

    - `-f<script文件>`或`--file=<script文件>` 以选项中指定的script文件来处理输入的文本文件。

    - `-h`或`--help` 显示帮助。

    - `-n`或`--quiet`或`--silent` 仅显示script处理后的结果。

    - `-V`或`--version` 显示版本信息。

- 动作说明：

    - a ：新增， a 的后面可以接字串，而这些字串会在新的一行出现(目前的下一行)～

    - c ：取代， c 的后面可以接字串，这些字串可以取代 n1,n2 之间的行！

    - d ：删除，因为是删除啊，所以 d 后面通常不接任何咚咚；

    - i ：插入， i 的后面可以接字串，而这些字串会在新的一行出现(目前的上一行)；

    - p ：打印，亦即将某个选择的数据印出。通常 p 会与参数 sed -n 一起运行～

    - s ：取代，可以直接进行取代的工作哩！通常这个 s 的动作可以搭配正规表示法！例如 1,20s/old/new/g 就是啦！

example | \
-|-
`sed -e 4a\newLine testfile` | 在testfile文件的第四行后添加一行，并将结果输出到标准输出
`nl /etc/passwd | sed '2,5d'` | 将 /etc/passwd 的内容列出并且列印行号，同时，请将第 2~5 行删除
`nl /etc/passwd | sed '2,5c No 2-5 number'` | 将第2-5行的内容取代成为『No 2-5 number』
`nl /etc/passwd | sed '/root/p'` | 搜索 /etc/passwd有root关键字的行
`nl /etc/passwd | sed -n '/root/p'` | 使用-n的时候将只打印包含模板的行
`nl /etc/passwd | sed  '/root/d'` | 删除/etc/passwd所有包含root的行，其他行输出

## Reference

- [Linux find命令 | 菜鸟教程](http://www.runoob.com/linux/linux-comm-find.html)

- [Linux下的tar压缩解压缩命令详解](
https://www.cnblogs.com/manong--/p/8012324.html)