#!/bin/sh
read -n 1 -sp "Enter G for GameMode, N for NormalMode" chosen

case $chosen in
	G)startx ~/.xinitrc-games;;
	N)startx;;
esac

