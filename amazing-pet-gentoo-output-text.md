```
genr8too /mnt/crucialp1/project5-october-stage3script-test # pet-gentoo.sh

 * Fetching latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt ...
 ...                                                                                                                                                                                                                                      [ ok ] * Parsed stage stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz from latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt


 * Fetching signature for stage3-amd64-hardened-nomultilib-selinux-openrc ...
 ...                                                                                                                                                                                                                                      [ ok ]
 * Downloading latest release autobuild stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz ...
 ...                                                                                                                                                                                                                                      [ ok ]
 * Verifying signature of release stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz
 ...
gpg: Signature made Mon Oct  2 09:21:07 2023 EDT
gpg:                using RSA key 534E4209AB49EEE1C19D96162C44695DB9F6043D
gpg: Good signature from "Gentoo Linux Release Engineering (Automated Weekly Release Key) <releng@gentoo.org>" [ultimate]                                                                                                                 [ ok ]
********************1****************************
Error! Disk Image found, it had already been created!
To mount the root filesystem, Run:
  amazing-mount-fs-partitions.sh stage3-amd64-hardened-nomultilib-selinux-openrc_1.dd

********************2****************************
Found loop device: /dev/loop0 !
changing security context of '/dev/loop0'
changing security context of '/dev/loop0p1'
changing security context of '/dev/loop0p2'
changing security context of '/dev/loop0p3'
Found existing Root target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/ ...
Mounted Root FS (partition 3) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/
Found existing Boot target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/ ...
Mounted Boot (partition 2) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/
Found existing EFI target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/ ...
Mounted EFI (partition 1) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/
Created directory structure hierarchy for: /dev,sys,proc,run,tmp
.extractedtar file found - skipping extraction of .tar.xz
Done! now Run: genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/

********************3****************************
                 Go ! Chroot in:
    genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1
==> Binding /usr/src/linux now.
>>> Regenerating /etc/ld.so.cache...
(chroot) genr8too / #

genr8too /mnt/crucialp1/project5-october-stage3script-test # pet-gentoo.sh
 * Fetching latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt ...
 ...                                                                                                                                                                                                                                      [ ok ]
 * Parsed stage stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz from latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt
 ...
 * Fetching signature for stage3-amd64-hardened-nomultilib-selinux-openrc ...
 ...                                                                                                                                                                                                                                      [ ok ]
 * Downloading latest release autobuild stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz ...
 ...                                                                                                                                                                                                                                      [ ok ]
 * Verifying signature of release stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz
 ...
gpg: Signature made Mon Oct  2 09:21:07 2023 EDT
gpg:                using RSA key 534E4209AB49EEE1C19D96162C44695DB9F6043D
gpg: Good signature from "Gentoo Linux Release Engineering (Automated Weekly Release Key) <releng@gentoo.org>" [ultimate]                                                                                                                 [ ok ]

********************1****************************

Created disk image: stage3-amd64-hardened-nomultilib-selinux-openrc_1.dd !
This will detach all previous loop devices...
Found loop device: /dev/loop0 !
Checking that no-one is using this disk right now ... OK

Disk /dev/loop0: 25 GiB, 26843545600 bytes, 52428800 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

>>> Script header accepted.
>>> Created a new GPT disklabel (GUID: 105361DC-BB59-1348-AD6D-1F0DB10E807A).
/dev/loop0p1: Created a new partition 1 of type 'EFI System' and of size 50 MiB.
/dev/loop0p2: Created a new partition 2 of type 'Linux filesystem' and of size 150 MiB.
/dev/loop0p3: Created a new partition 3 of type 'Linux filesystem' and of size 24.8 GiB.
/dev/loop0p4: Done.

New situation:
Disklabel type: gpt
Disk identifier: 105361DC-BB59-1348-AD6D-1F0DB10E807A

Device        Start      End  Sectors  Size Type
/dev/loop0p1   2048   104447   102400   50M EFI System
/dev/loop0p2 104448   411647   307200  150M Linux filesystem
/dev/loop0p3 411648 52426751 52015104 24.8G Linux filesystem

The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
Created disk image w/ partitions: EFI (p1), boot (p2), gentooROOT (p3) !
mkfs.fat 4.2 (2021-01-31)
/dev/loop0p1 has 255 heads and 63 sectors per track,
hidden sectors 0x0800;
logical sector size is 512,
using 0xf8 media descriptor, with 102375 sectors;
drive number 0x80;
filesystem has 2 32-bit FATs and 1 sector per cluster.
FAT size is 788 sectors, and provides 100767 clusters.
There are 32 reserved sectors.
Volume ID is 0ca863c4, volume label EFI.
mke2fs 1.47.0 (5-Feb-2023)
Discarding device blocks: done
Creating filesystem with 153600 1k blocks and 38456 inodes
Filesystem UUID: d89974ee-e23a-4dd9-9398-aca038d716d5
Superblock backups stored on blocks:
        8193, 24577, 40961, 57345, 73729

Allocating group tables: done
Writing inode tables: done
Creating journal (4096 blocks): done
Writing superblocks and filesystem accounting information: done

mke2fs 1.47.0 (5-Feb-2023)
Discarding device blocks: done
Creating filesystem with 6501888 4k blocks and 1627024 inodes
Filesystem UUID: df1df988-3329-4d41-a549-be6ee1e95ffb
Superblock backups stored on blocks:
        32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208,
        4096000

Allocating group tables: done
Writing inode tables: done
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done

Created filesystems w/ mkfs: (root/boot = ext4, EFI = fat32)

Complete! Finished making amazing disk image, partitions & filesystems! All done.
To mount the root filesystem, Run:
  amazing-mount-fs-partitions.sh stage3-amd64-hardened-nomultilib-selinux-openrc_1.dd

********************2****************************

Found loop device: /dev/loop1 !
changing security context of '/dev/loop1'
changing security context of '/dev/loop1p1'
changing security context of '/dev/loop1p2'
changing security context of '/dev/loop1p3'
Found existing Root target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/ ...
Mounted Root FS (partition 3) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/
Creating Boot target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/ !
Mounted Boot (partition 2) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/
Creating EFI target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/ !
Mounted EFI (partition 1) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/
Created directory structure hierarchy for: /dev,sys,proc,run,tmp
Copying stage3-amd64-hardened-nomultilib-selinux-openrc_1*.tar.xz to root of image  @ /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/
cp: cannot stat '/mnt/crucialp1/project5-october-stage3script-test/stage3-amd64-hardened-nomultilib-selinux-openrc_1*.tar.xz': No such file or directory
Extracting stage3-amd64-hardened-nomultilib-selinux-openrc_1*.tar.xz with tar to root mount dir @ /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/ .............
tar: /mnt/crucialp1/project5-october-stage3script-test/stage3-amd64-hardened-nomultilib-selinux-openrc_1*.tar.xz: Cannot open: No such file or directory
tar: Error is not recoverable: exiting now
Done! now Run: genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/

********************3****************************

                 Go ! Chroot in:
    genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1
==> WARNING: Empty Blocker file found for ./usr/src/linux , Deleting.
rm: cannot remove '/mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/usr/src/linux': No such file or directory
==> Creating blank dir for mountpoint! Binding now.
==> Binding /usr/src/linux now.
touch: cannot touch '/mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//var/cache/distfiles': No such file or directory
mount: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//var/cache/distfiles: mount point does not exist.
       dmesg(1) may have more information after failed mount system call.
chroot: failed to run command ■/bin/bash■: No such file or directory
Unmounting. Loop device & Disk image remain.

genr8too /mnt/crucialp1/project5-october-stage3script-test # pet-gentoo.sh

 * Fetching latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt ...
 ...                                                                                                                                                                                                                                      [ ok ]
 * Parsed stage stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz from latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt

 * Fetching signature for stage3-amd64-hardened-nomultilib-selinux-openrc ...
 ...                                                                                                                                                                                                                                      [ ok ]

 * Downloading latest release autobuild stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz ...
 ...                                                                                                                                                                                                                                      [ ok ]

 * Verifying signature of release stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz
 ...
gpg: Signature made Mon Oct  2 09:21:07 2023 EDT
gpg:                using RSA key 534E4209AB49EEE1C19D96162C44695DB9F6043D
gpg: Good signature from "Gentoo Linux Release Engineering (Automated Weekly Release Key) <releng@gentoo.org>" [ultimate]                                                                                                                 [ ok ]

********************1****************************

Created disk image: stage3-amd64-hardened-nomultilib-selinux-openrc_1.dd !
This will detach all previous loop devices...
Found loop device: /dev/loop0 !
Checking that no-one is using this disk right now ... OK

Disk /dev/loop0: 25 GiB, 26843545600 bytes, 52428800 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes

>>> Script header accepted.
>>> Created a new GPT disklabel (GUID: D2EC969D-FDEC-374E-84A1-3FAA541A1CB9).
/dev/loop0p1: Created a new partition 1 of type 'EFI System' and of size 50 MiB.
/dev/loop0p2: Created a new partition 2 of type 'Linux filesystem' and of size 150 MiB.
/dev/loop0p3: Created a new partition 3 of type 'Linux filesystem' and of size 24.8 GiB.
/dev/loop0p4: Done.

New situation:
Disklabel type: gpt
Disk identifier: D2EC969D-FDEC-374E-84A1-3FAA541A1CB9

Device        Start      End  Sectors  Size Type
/dev/loop0p1   2048   104447   102400   50M EFI System
/dev/loop0p2 104448   411647   307200  150M Linux filesystem
/dev/loop0p3 411648 52426751 52015104 24.8G Linux filesystem

The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.
Created disk image w/ partitions: EFI (p1), boot (p2), gentooROOT (p3) !
mkfs.fat 4.2 (2021-01-31)
/dev/loop0p1 has 255 heads and 63 sectors per track,
hidden sectors 0x0800;
logical sector size is 512,
using 0xf8 media descriptor, with 102375 sectors;
drive number 0x80;
filesystem has 2 32-bit FATs and 1 sector per cluster.
FAT size is 788 sectors, and provides 100767 clusters.
There are 32 reserved sectors.
Volume ID is 2eb80a4a, volume label EFI.
mke2fs 1.47.0 (5-Feb-2023)
Discarding device blocks: done
Creating filesystem with 153600 1k blocks and 38456 inodes
Filesystem UUID: e14e4497-2800-49a2-b195-1c2c71c11220
Superblock backups stored on blocks:
        8193, 24577, 40961, 57345, 73729

Allocating group tables: done
Writing inode tables: done
Creating journal (4096 blocks): done
Writing superblocks and filesystem accounting information: done

mke2fs 1.47.0 (5-Feb-2023)
Discarding device blocks: done
Creating filesystem with 6501888 4k blocks and 1627024 inodes
Filesystem UUID: 1ab50260-5aec-4397-a146-4220c766c8dd
Superblock backups stored on blocks:
        32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208,
        4096000

Allocating group tables: done
Writing inode tables: done
Creating journal (32768 blocks): done
Writing superblocks and filesystem accounting information: done

Created filesystems w/ mkfs: (root/boot = ext4, EFI = fat32)

Complete! Finished making amazing disk image, partitions & filesystems! All done.
To mount the root filesystem, Run:
  amazing-mount-fs-partitions.sh stage3-amd64-hardened-nomultilib-selinux-openrc_1.dd

********************2****************************

Found loop device: /dev/loop1 !
changing security context of '/dev/loop1'
changing security context of '/dev/loop1p1'
changing security context of '/dev/loop1p2'
changing security context of '/dev/loop1p3'
Found existing Root target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/ ...
Mounted Root FS (partition 3) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/
Creating Boot target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/ !
Mounted Boot (partition 2) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/
Creating EFI target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/ !
Mounted EFI (partition 1) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/
Created directory structure hierarchy for: /dev,sys,proc,run,tmp
Copying stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz to root of image  @ /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/
Extracting stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz with tar to root mount dir @ /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/ .............
Done! now Run: genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/

********************3****************************

                 Go ! Chroot in:
    genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1
==> WARNING: Empty Blocker file found for ./usr/src/linux , Deleting.
rm: cannot remove '/mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/usr/src/linux': No such file or directory
==> Creating blank dir for mountpoint! Binding now.
==> Binding /usr/src/linux now.
>>> Regenerating /etc/ld.so.cache...
(chroot) genr8too / #
genr8too /mnt/crucialp1/project5-october-stage3script-test # pet-gentoo.sh

 * Fetching latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt ...
 ...                                                                                                                                                                                                                                      [ ok ]
 * Parsed stage stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz from latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt

 * Fetching signature for stage3-amd64-hardened-nomultilib-selinux-openrc ...
 ...                                                                                                                                                                                                                                      [ ok ]

 * Downloading latest release autobuild stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz ...
 ...                                                                                                                                                                                                                                      [ ok ]

 * Verifying signature of release stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz
 ...
gpg: Signature made Mon Oct  2 09:21:07 2023 EDT
gpg:                using RSA key 534E4209AB49EEE1C19D96162C44695DB9F6043D
gpg: Good signature from "Gentoo Linux Release Engineering (Automated Weekly Release Key) <releng@gentoo.org>" [ultimate]                                                                                                                 [ ok ]

********************1****************************

Error! Disk Image found, it had already been created!
To mount the root filesystem, Run:
  amazing-mount-fs-partitions.sh stage3-amd64-hardened-nomultilib-selinux-openrc_1.dd

********************2****************************

Found loop device: /dev/loop2 !
changing security context of '/dev/loop2'
changing security context of '/dev/loop2p1'
changing security context of '/dev/loop2p2'
changing security context of '/dev/loop2p3'
Found existing Root target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/ ...
Mounted Root FS (partition 3) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/
Found existing Boot target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/ ...
Mounted Boot (partition 2) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/
Found existing EFI target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/ ...
Mounted EFI (partition 1) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/
Created directory structure hierarchy for: /dev,sys,proc,run,tmp
.extractedtar file found - skipping extraction of .tar.xz
Done! now Run: genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/

********************3****************************

                 Go ! Chroot in:
    genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1
==> Binding /usr/src/linux now.
>>> Regenerating /etc/ld.so.cache...
(chroot) genr8too / #
^D
(chroot) genr8too / #
exit
Unmounting. Loop device & Disk image remains.
genr8too ~ # cd /mnt/crucialp1/project5-october-stage3script-test
genr8too /mnt/crucialp1/project5-october-stage3script-test # /home/genr8eofl/src/gentoo-public/myscripts/pet-gentoo.sh

 * Fetching latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt ...
 ...                                                                                                                                                                                                                                      [ ok ] * parsed stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz from latest-stage3-amd64-hardened-nomultilib-selinux-openrc.txt

 * Fetching signature for stage3-amd64-hardened-nomultilib-selinux-openrc ...
 ...                                                                                                                                                                                                                                      [ ok ]
 * Fetching ISO stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz ...
 ...                                                                                                                                                                                                                                      [ ok ]
 * Verifying signature for stage3-amd64-hardened-nomultilib-selinux-openrc-20231001T170148Z.tar.xz
 ...
gpg: Signature made Mon Oct  2 09:21:07 2023 EDT
gpg:                using RSA key 534E4209AB49EEE1C19D96162C44695DB9F6043D
gpg: Good signature from "Gentoo Linux Release Engineering (Automated Weekly Release Key) <releng@gentoo.org>" [ultimate]                                                                                                                 [ ok ]
********************1****************************
Error! Disk Image found, it had already been created!
To mount the root filesystem, Run:
  amazing-mount-fs-partitions.sh stage3-amd64-hardened-nomultilib-selinux-openrc_1.dd

********************2****************************
Found loop device: /dev/loop1 !
changing security context of '/dev/loop1'
changing security context of '/dev/loop1p1'
changing security context of '/dev/loop1p2'
changing security context of '/dev/loop1p3'
Found existing Root target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/ ...
Mounted Root FS (partition 3) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/
Found existing Boot target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/ ...
Mounted Boot (partition 2) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/
Found existing EFI target dir: /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/ ...
Mounted EFI (partition 1) on /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1//boot/efi/
Created directory structure hierarchy for: /dev,sys,proc,run,tmp
.extractedtar file found - skipping extraction of .tar.xz
Done! now Run: genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1/

********************3****************************
                 Go ! Chroot in:
    genr8-chroot /mnt/stage3-amd64-hardened-nomultilib-selinux-openrc_1
==> Binding /usr/src/linux now.
>>> Regenerating /etc/ld.so.cache...
(chroot) genr8too / #
```
