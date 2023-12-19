#!/bin/bash
# mount-squashfs.sh script v0.2 - @genr8eofl copyright 2023 - AGPL3 License
# Description: simply mounts the first squashfs in current dir, rw

sqfs=(*.squashfs)
gentoo="/mnt/gentoo"
mount -t squashfs -o rw ${sqfs} ${gentoo}
