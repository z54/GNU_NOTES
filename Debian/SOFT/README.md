# 6.1.2 Software configure

## xterm: ~/Xresources

xterm*fullscreen: true

```
xterm字体设置
home目录下建.Xresources，内容如下，之后运行xrdb -merge ~/.Xresources，重启xterm
! -*- mode: Conf[Xdefaults];-*-
!!! https://wiki.archlinux.org/index.php/X_resources
!!! run 'xrdb -merge .Xresources' after change

xpdf.paperColor: #f7f4ef
xpdf.matteColor: #f7f4ef
xpdf*background: #f7f4ef

xterm*loginShell: true

!!!font and locale
!xterm*faceName: DejaVu Sans Mono:antialias=True:pixelsize=22
!xterm*boldFont: DejaVu Sans Mono:style=Bold:pixelsize=22
xterm*faceName: Monospace:pixelsize=20
xterm*boldFont: Monospace:pixelsize=20
!xterm*faceNameDoublesize: WenQuanYi Micro Hei Mono
xterm*faceNameDoublesize: Noto Sans Mono CJK SC

! set 'cjkWidth' to true makes aptitude window messy.
!xterm*cjkWidth: true
xterm*locale: true
xterm*utf8: true
!xterm*utf8Title: true
xterm*fontMenu*fontdefault*Label: Default
xterm*xftAntialias: true
xterm*selectToClipboard: true

!!! make url selection better (seems not working)
! http://www.debian-administration.org/article/66/Customizing_your_xterm
xterm*charClass: 33:48,36-47:48,58-59:48,61:48,63-64:48,95:48,126:48

!!!look and feel
xterm*termName: xterm-256color
xterm*ScrollBar: false
xterm*visualBell: false
xterm*fullscreen: never
xterm*borderLess: true
xterm*internalBorder: 0
xterm*externalBorder: 0
xterm*borderWidth: 0


xterm*omitTranslation: fullscreen
! disable alt-enter in xterm, and enable it in emacs.
xterm*metaSendsEscape: true

xterm*allowSendEvents: True
xterm*allowTitleOps: True
xterm*sessionMgt: false

!!! http://sunaku.github.io/zenburn-terminal-color-scheme.html
XTerm*color0: #000d18
XTerm*color1: #e89393
XTerm*color2: #9ece9e
XTerm*color3: #f0dfaf
XTerm*color4: #1f1f1f
! #8cd0d3
XTerm*color5: #c0bed1
XTerm*color6: #dfaf8f
XTerm*color7: #efefef
XTerm*color8: #000d18
XTerm*color9: #e89393
XTerm*color10: #9ece9e
XTerm*color11: #f0dfaf
XTerm*color12: #8cd0d3
XTerm*color13: #c0bed1
XTerm*color14: #dfaf8f
XTerm*color15: #efefef
XTerm*colorBD: #ffcfaf
XTerm*colorIT: #80d4aa
XTerm*colorUL: #ccdc90
XTerm*foreground: #dcdccc
XTerm*background: black
!#1f1f1f
XTerm*cursorColor: #8faf9f

```
