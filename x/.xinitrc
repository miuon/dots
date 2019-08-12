#!/bin/sh

xrandr --output DP-3 --right-of HDMI-0
xrandr --output DP-0 --primary --right-of DP-3

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# i3 as default
session=${1:-i3}

start-pulseaudio-x11
mopidy &
nitrogen --restore &
$HOME/bin/polybar-launch

case $session in
	i3|i3wm 	) wmcmd=i3;;
	cwm|c           ) wmcmd=cwm;;
	wmutils|wmu 	) wmcmd=wmutils;;
	* 		) wmcmd=$1;;
esac

exec ck-launch-session dbus-launch --sh-syntax --exit-with-x11 $wmcmd
