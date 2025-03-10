#!/bin/bash
#2024 genr8eofl @ gentoo - gentoo-make-partition-disk v0.4 - partitions the disk/disk-image
#Usage: # ./$0 [/dev/disk($1)]
DISK="${1:-/dev/sda}"

#Create MBR Partitions
#sfdisk - programmatic partition script (WARNING, ALWAYS WIPES!)
sfdisk ${DISK} <<EEOF
#(very specific syntax, watch out for whitespace)
label: mbr
size= 100M, type= v, name="EFI"
#,100M,U,,
size= 250M, type= v, name="boot"
#,250M,L,,
size= , type= L, name="gentooROOT"
#,,V,,
EEOF
echo "Created disk image w/ partitions: EFI (p1), boot (p2), gentooROOT (p3) !"

#Create Filesystems on each of these partitions
mkfs.vfat ${DISK}1 -n EFI -F32 -v
mkfs.vfat ${DISK}2 -n boot -F32 -v
mkfs.ext4 ${DISK}3 -L gentooROOT
echo "Created filesystems w/ mkfs: (EFI = fat32 , boot/root = ext4)"

echo
echo "Complete! Finished making disk partitions & filesystems! All done."
echo "Next, To mount the root filesystem, Run:"
echo "  gentoo-mount-fs-partitions.sh ${DISKIMG}" && exit
