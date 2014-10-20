#! /bin/bash

# system tray
trayer --edge bottom --align right --SetDockType true --SetPartialStrut true --expand true --widthtype percent --width 5 --transparent true --tint 0x000000 --height 12 &
# screensaver
xscreensaver -no-splash &
# set the cursoe as pointer, otherwise X will appear as cursor
xsetroot -cursor_name left_ptr
# start clipboard manager without icon
parcellite &
# let me go ahead with pre starting some of the apps
/home/abhishek/.dropbox-dist/dropboxd &
nm-applet &
terminator &
google-chrome &
# time to start, the master - the window manager xmonad
exec ck-launch-session xmonad

