#!/bin/bash
#@2023 genr8eofl @gentoo IRC - simplest mount-chroot.sh v0.11
#Execute from current target dir /mnt/gentoo

mount --types proc /proc proc
mount --rbind /sys sys
mount --make-rslave sys
mount --rbind /dev dev
mount --make-rslave dev
mount --bind /run run
mount --make-slave run
