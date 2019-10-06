# location

`/home/username/.bashrc`

# alias

```bash
#thesis
alias src='cd /home/sunforx/mount/f/Documents/OS/Graduation/ZOS/src'
alias tss='cd Operating-system-exploration/Thesis'
alias tssbk='cp /home/sun/Operating-system-exploration/Thesis/zach.tex /mnt/f/Documents/OS/Operating-system-exploration/Thesis/ && cp /home/sun/Operating-system-exploration/Thesis/thesis.bib /mnt/f/Documents/OS/Operating-system-exploration/Thesis/'
alias tssbk='cp /home/sunforx/thesis/zach.tex /home/sunforx/mount/f/Documents/OS/Graduation/Thesis && cp /home/sunforx/thesis/thesis.bib /home/sunforx/mount/f/Documents/OS/Graduation/Thesis'
alias tsscp='cp /mnt/f/Documents/OS/Operating-system-exploration/Thesis/zach.tex /home/sun/Operating-system-exploration/Thesis/ && cp /mnt/f/Documents/OS/Operating-system-exploration/Thesis/thesis.bib /home/sun/Operating-system-exploration/Thesis/'
alias tssmake='cd /home/sunforx/thesis && make'
alias tsspdf='cp -f /home/sun/Operating-system-exploration/Thesis/zach.pdf /mnt/c/Users/sun/Desktop/'
alias tssre='cp /home/sunforx/mount/f/Documents/OS/Graduation/Thesis/zach.tex /home/sunforx/thesis && cp /home/sunforx/mount/f/Documents/OS/Graduation/Thesis/thesis.bib /home/sunforx/thesis'
alias tssre='cp /mnt/f/Documents/OS/Operating-system-exploration/Thesis/zach.tex /home/sun/latex/ && cp /mnt/f/Documents/OS/Operating-system-exploration/Thesis/thesis.bib /home/sun/latex/'

###

#alias flasky='cd /home/sunforx/Documents/flasky'
#alias impressive='/usr/bin/impressive --windowed -c memory --clock -M --nologo'
#alias os2='cd /usr/src/linux-2.6.17'
#alias os4='cd /usr/src/linux-source-4.5'
#alias recordmydesktop='recordmydesktop --no-cursor --fps 30 --no-sound --no-wm-check --no-frame'
#alias screencapture='avconv -f x11grab -s 1366x768 -i :0.0+0,0 -vf scale=w=1280:h=720 -vcodec libx264 -pre lossless_ultrafast -threads 0 /tmp/screen.mkv'
#alias xcompmgr='xcompmgr -CcfF -I-.02 -O-.04 -D0001 -t-5 -l-5 -r4.2 -o.82'
#alias xpdf='/usr/bin/mupdf'
#docs

#self
alias gw='gcc -Wall'
alias sss='ss-local -v -c /etc/shadowsocks/config.json'
alias ess='sudo vi /etc/shadowsocks/config.json'
alias sn='sudo poweroff'
alias upup='sudo apt-get update && sudo apt-get upgrade'
#alias dh='sudo dhclient eth0'
alias ld='xbacklight -10'
alias lo='xbacklight +10'
alias re='reboot'
alias sa='source /home/sun/.bash_aliases'
alias al='vi /home/sun/.bash_aliases && source /home/sun/.bash_aliases'
alias li='sudo tee /sys/class/backlight/intel_backlight/brightness <<< 1000'
alias pb='ping baidu.com'
alias power='`acpi -b | grep -P -o "[0-9]+(?=%)" | head -n 1'
alias tl='synclient touchpadoff=0'
alias to='synclient touchpadoff=1'
alias usb='sudo mount /dev/sdb1 /home/sunforx/mount/usb && cd ~/mount/usb'
alias wifi='sudo nmtui'

alias Date='date +%Y%m%d%H%M'
alias a2ps='a2ps -B --border=no --columns=1 -R --margin=0'
alias blame='systemd-analyze blame | head'
alias cp='/bin/cp -i'
alias em='emacsclient -nc'
alias espeak='espeak -s 120 -v mb-us1'
alias grep='grep --color=auto'
alias impressive='/usr/bin/impressive --windowed -c memory --clock -M --nologo'
alias ls='/bin/ls --color=auto -F'
alias mv='/bin/mv -i'
alias pub='xterm -e mosh pub &'
alias qiv='qiv -m --vikeys'
alias rm='/bin/rm -i'
alias sdf='ssh tty.sdf.org'
alias sm='sm -n Purisa'
alias st='sudo hwclock --hctosys'
alias t='tmux a || tmux'
alias toilet='toilet --gay --font future'
alias unpaper='unpaper -t pbm --overwrite --no-blackfilter --no-noisefilter --no-blurfilter --no-grayfilter --no-deskew --no-wipe'
alias ve='. ~/venv/bin/activate'
alias wget='wget -c --no-check-certificate'
alias xcompmgr='xcompmgr -CcfF -I-.02 -O-.04 -D0001 -t-5 -l-5 -r4.2 -o.82'
alias zathura='/usr/bin/zathura --fork'

# Local Variables:
# mode: sh
# End:
```
