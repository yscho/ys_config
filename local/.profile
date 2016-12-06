# $FreeBSD: releng/11.0/etc/root/dot.profile 278616 2015-02-12 05:35:00Z cperciva $
#
PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:~/bin:/system/bin
export PATH
HOME=/root
export HOME
TERM=${TERM:-xterm}
export TERM
PAGER=more
export PAGER

export TERM=screen-256color
#LS COLORS
export LSCOLORS=Gxfxcxdxbxegedabagacad

export TERM=xterm
export LANG=ko_KR.UTF-8
export LC_ALL=ko_KR.UTF-8
export LOCALE=ko_KR.UTF-8

source ~/.bashrc

export TL_HOME=/rsmdata
