# VIM

## 模式

### 命令模式（所有快捷键的基准模式）

\ | \
|---|---|
`:w` | 保存
`:q` | 退出
`:!` | 强制
`:w filename` | 另存为filename
`ZZ` | 若文档未修改则直接退出，若修改过则保存后退出

---

\ | 编辑模式
|---|---|
`i` | 当前位置进入编辑模式
`o` | 换行并在行首进入编辑模式

---

\ | 光标移动
-|-
`h` | 左
`j` | 下
`k` | 上
`l` | 右
`C-f` | 下一页
`C-b` | 上一页
`C-d` | 下半页
`C-u` | 上半页
`0` | 行首
`$` | 行末
`gg` | 文档头 = `1G`
`G` | 文档末
`nG` | 跳到第n行

---

\ | 删除
-|-
`dd` | 删除整行
`ndd` | 删除n行

---

\ | 复制粘贴
-|-
`yy` | 复制当前行
`nyy` | 复制n行
`p` | 粘贴到当前位置后
`P` | 粘贴到当前位置前

---

 \ | 其他
 -|-
`/word` | 搜索word关键词, `n` 搜索下一个，`N` 搜索上一个
`u` | 撤销，恢复上一步
`C-r` | 重复做上一步

## 设置

### 行号
\ |\
-\-
`set nu` | 显示行号
`set nonu` | 隐藏行号

# fatal

- [vi下保存只读文件（“read-only”）](http://blog.sciencenet.cn/blog-685489-563222.html)
    1. `:w ！sudo tee%`
    2. 输入root密码
    3. done

# Reference
- [Linux vi/vim | 菜鸟教程](http://www.runoob.com/linux/linux-vim.html)
- [vi/vim下如何搜索字符串 - 一只特立独行的猪 - CSDN博客](https://blog.csdn.net/whynotldch/article/details/78163480)

