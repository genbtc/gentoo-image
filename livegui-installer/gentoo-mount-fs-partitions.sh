#!/bin/bash
# gentoo-mount-fs-partitions.sh script v0.6 by @genr8eofl copyright 2023-2025 - AGPL3 License
# Description: mounts the amazing partition scheme!
# Note: this is part 2, use part 1 first - gentoo-make-partition-disk.sh
# Usage: # ./$0 [/dev/disk($1)] [/mnt/target($2)]
DISK="${1:-/dev/sda}"
DDNAME="${2:-/mnt/gentoo}"

#3-Create new mount point root / target , p3
TARGET="${DDNAME}/"
if [ ! -e "${TARGET}" ]; then
    mkdir -p "${TARGET}"
    echo "Creating Root target dir: ${TARGET} !"
else
    echo "Found existing Root target dir: ${TARGET} ..."
fi
#mount p3, go!
mount "${DISK}3" "${TARGET}" && \
echo "Mounted Root FS (partition 3) on ${TARGET}"

#2-Create new boot/ mount points in new fs structure, p2
BOOTTARGET="${TARGET}/boot/"
if [ ! -e "${BOOTTARGET}" ]; then
    mkdir -p "${BOOTTARGET}"
    echo "Creating Boot target dir: ${BOOTTARGET} !"
else
    echo "Found existing Boot target dir: ${BOOTTARGET} ..."
fi
#mount p2, go!
mount "${DISK}2" "${BOOTTARGET}" && \
echo "Mounted Boot (partition 2) on ${BOOTTARGET}"

#1-Create new boot/efi/ mount points in new fs structure, p1
EFITARGET="${TARGET}/boot/efi/"
if [ ! -e "${EFITARGET}" ]; then
    mkdir -p "${EFITARGET}"
    echo "Creating EFI target dir: ${EFITARGET} !"
else
    echo "Found existing EFI target dir: ${EFITARGET} ..."
fi
#mount p1, go!
mount "${DISK}1" "${EFITARGET}" && \
echo "Mounted EFI (partition 1) on ${EFITARGET}"

#Create stub top-level dir structures
mkdir -p "${TARGET}"/{dev,sys,proc,run,tmp} && \
echo "Created directory structure hierarchy for: /dev,sys,proc,run,tmp"

#Done
echo "Done! now Run next script on: ${TARGET}"
cd "${TARGET}" || exit 1
