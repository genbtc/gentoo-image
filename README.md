# The best gentoo creation document!
##### by genr8eofl @gentoo IRC - 2023 LICENSE - Creative Commons 4.0, Attribution

## building stage3s, chroots, images, and immutables!

### Stage3:
1. Start with a suitable Stage3 from anywhere,
2.  or make your own.
3. create amazing image, partitions & fs (truncate sparse, losetup, sfdisk, mkfs)
	[amazing-make-partition-truncate.sh](amazing-make-partition-truncate.sh)
4. mount amazing image (mount /dev/loop0 /mnt/stage3_1)
	[amazing-mount-fs-partitions.sh](amazing-mount-fs-partitions.sh)
5. extract stage3 into /mnt/stage3_1 (tar xvf * --...)
	[extract-stage3-all.sh](extract-stage3-all.sh)
5. genr8-chroot into /mnt/stage3_1 (arch-chroot for/from me/gentoo)
	[genr8-chroot.sh](genr8-chroot.sh)
   it binds /etc/resolv.conf, DISTDIR=/var/cache/distfiles, PORTDIR=/var/db/repos/gentoo
6. Configure Further. Hostname, time, users, passwd etc.
7. Exiting Chroot with Ctrl^D should cause unmount /mnt/stage3_1
8. losetup -D to unmount .dd loop image

### DD Image Contains an entire disk at this point, and could be booted. 


### amazing-pet-gentoo.sh (example) :
```
STAGE3="${1:-stage3-amd64-hardened-nomultilib-selinux-openrc}"                                                                                        
NUM=1                                                                                                                                                 
download-gentoo-iso-latest-dl_Spawns.sh "${STAGE3}"                                                                                                   
echo                                                                                                                                                  
echo "********************1****************************"                                                                                              
echo                                                                                                                                                  
amazing-make-partition-truncate.sh "${STAGE3}_${NUM}.dd"                                                                                              
echo                                                                                                                                                  
echo "********************2****************************"                                                                                              
echo                                                                                                                                                  
amazing-mount-fs-partitions.sh "${STAGE3}_${NUM}.dd"                                                                                                  
echo                                                                                                                                                  
echo "********************3****************************"                                                                                              
echo                                                                                                                                                  
echo "                 Go ! Chroot in:"                                                                                                               
echo "    genr8-chroot /mnt/${STAGE3}_${NUM}"                                                                                                         
genr8-chroot /mnt/"${STAGE3}_${NUM}"                                                                                                                  
echo "Unmounting. Loop device & Disk image remain."  
```


### basic steps explanation [basic-idea.txt](basic-idea.txt)

Downloads a gentoo stage3.

Makes the disk & partition setup & formats the partitions.

Mounts the partitions.

Chroot in (you will want to set up your own emerge, kernel, bootloader, etc.)

Loop Image remains, .dd is built, can be subjected to some further processing
