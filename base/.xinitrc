#!/usr/bin/env sh

#Heavily copied from voidrice/.xprofile
remaps &		# run the remaps script, switching caps/esc and more; check it for more info
setbg &			# set the background with the `setbg` script
picom --config ~/.config/picom.conf &	# picom for transparency
# $STATUSBAR &		# script for updating the status bar. Will comment this until I properly set the rest of the config
polybar &
dunst &			# dunst for notifications
sxhkd -m 1 &		# Bind keys with sxhkd
xset r rate 300 50 &	# Speed xrate up
unclutter &		# Remove mouse when idle
# mpd-module-update &	# Check for when to update the mpd module. Will add when I add the command
nvidia-settings -a '[gpu:0]/GPUMemoryTransferRateOffset[3]=500' &
nvidia-settings -a '[gpu:0]/GraphicsClockOffset[3]=150' &
wal --theme base16-oceanicnext
blueman-applet &

[ -f "$HOME/.xprofile" ] && . ~/.xprofile

exec i3
