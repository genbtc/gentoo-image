#Dialog0='About the Gentoo Linux installation'
#Info0='This chapter introduces the installation approach documented within this handbook.'
#Dialog1='Choosing the right installation medium'
#Info1='It is possible to install Gentoo in many ways. This chapter explains how to install Gentoo using the liveGUI image.'
#Dialog2='Configuring the network'
#Info2='An network connection is optional to access the internet, download the latest repository updates, source code, and software packages.'
Dialog2='Create partitions (EFI) and Format the disk (WIPE)'
Info2='Before Gentoo can be installed, a root file system layout and - optionally - other partitions need to be created.'
Command2='gentoo-make-partition-disk-EFI.sh'
Dialog3='Create partitions (MBR) and Format the disk (WIPE)'
Info3='Before Gentoo can be installed, a root file system layout and - optionally - other partitions need to be created.'
Command3='gentoo-make-partition-disk-MBR.sh'
#
Dialog4='Mount all the new partitions'
Info4='After creating the partitions, they need to be mounted for use.'
Command4='gentoo-mount-fs-partitions.sh'
#
Dialog5='Copy the LiveGUI to Install the Gentoo base system'
Info5='After booting the liveGUI, install the live system by copying the FS to the local storage disk.'
Command5="time rsync -aP /run/rootfsbase/  ${TARGET}"
#
#Dialog6='Configuring the Linux kernel'
#Info6='The Linux kernel is the core of every distribution. The dist-kernel gentoo-kernel-bin is precompiled and ready for use.'
Command6='uptime'
#Dialog7='Configuring the system'
#Info7='Some important configuration files must be created. Not many.'
#Dialog8='Installing system tools'
#Info8='In this chapter important system management tools are selected and installed.'
Dialog9='Configuring GRUB bootloader'
Info9='In this chapter a secondary bootloader (GRUB) gets installed and configured.'
Command9='grub-install ${TARGET} && grub-mkconfig -o /boot/grub/grub.cfg'
#
Dialog10='Finalizing the installation'
Info10='The installation is almost complete! Finishing touches are documented in this chapter.'
Command10='echo "Root passwd is blank, Set a root passwd with: passwd"'
