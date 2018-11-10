Markdown
===

Headers
---

- 类 Setext 形式
  
  ```bash
  This is an <h1> tag
  ===
  This is an <h2> tag
  ---
  ```

- 类 Atx 形式

  ```
  # This is an <h1> tag
  ## This is an <h2> tag
  ###### This is an <h6> tag
  ```

引用
---

引用的区块内也可以使用其他的 Markdown 语法

列表
---

- 无序列表
	* Item 1
	* Item 2
		* Item 2a
		* Item 2b

- 有序列表
	1. Item 1
	2. Item 2
	3. Item 3
		1. Item 3a
		2. Item 3b

格式
---

Emphasis

*This text will be italic*
_This will also be italic_

**This text will be bold**
__This will also be bold__

_You **can** combine them_

~~删除线~~

As Kanye West said:

> We're living the future so
> the present is our past.
Inline code
I think you should use an
`<addr>` element here instead.

## link

It's very easy to make some words **bold** and other words *italic* with Markdown. You can even [link to Google!](http://google.com)

## image

![Alt text](https://www.google.com.hk/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png)

![Alt text](http://www.google.cn/landing/cnexp/google-search.png "Goole")

## highlighting

```javascript
function fancyAlert(arg) {
  if(arg) {
    $.facebox({div:'#foo'})
  }
}
```

## Checklist

- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> ~~supported~~
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

## Tables

First Header | Second Header | ThirdHeaderHeader
:- | :-: | -:
Content from cell 1 | Content from cell 2 | Content from cell 3
Content in the first column | Content in the second column | Content in the third column

## toc

**Markdown Preview Enhanced**
- [Atom markdown 目录组件支持（插件）](https://jingyan.baidu.com/article/6181c3e0be9473152ff1536c.html)

## github

header

- [Mastering Markdown · GitHub Guides](https://guides.github.com/features/mastering-markdown/)

## fatal

- 竖线用 `&#124;` 或者 `&#x7C;` 来代替
- 行内换行 `<br>`

## Reference

- [Markdown 语法说明(简体中文版)](https://www.appinn.com/markdown/#hr)

[1]: abc