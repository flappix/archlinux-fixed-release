#!/bin/bash

mirror="https://archive.archlinux.org/repos"

time_last_update=$(curl $mirror/last/lastupdate -s)
if [ $? != 0 ]; then
	echo "Cannot fetch $mirror/last/lastupdate"
	exit
fi
last=$(date -d @$time_last_update "+%Y/%m/%d")

cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.backup-$(date "+%s")
echo "Server = $mirror/$last/\$repo/os/\$arch" > /etc/pacman.d/mirrorlist

pacman -Syu
