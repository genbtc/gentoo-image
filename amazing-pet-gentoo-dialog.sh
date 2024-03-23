#!/bin/sh
# dialog script v0.2 for amazing-pet-gentoo.sh v0.13 by @genr8eofl copyright 2023/2024 - AGPL3 License
if ! command -v dialog >/dev/null; then
    echo "This program requires the \"dialog\" program to be installed."
fi
DIAHEIGHT=0;	DIAWIDTH=53;
STAGE="${1:-stage3-amd64-openrc}"
NUM=1

exec 3>&1       #open FD3 as a clone of 1
#Command substitution inside subshell to get selection
selected=$(dialog \
    --title "Gentoo Image Scripts" \
    --menu "" $DIAHEIGHT $DIAWIDTH 0 \
    "S" "Download Latest $STAGE-.tar.gz" \
    "D" "Make Virtual Disk image" \
    "F" "Mount filesystem partitions" \
    "C" "Chroot in (genr8-chroot)" \
2>&1 1>&3)
#Fancy FD redirection stores selection in FD3
exit_status=$?  #numerical return code
exec 3>&-       #close FD3

#TODO: these scripts need to be in the same dir together
case $selected in
    S) echo "1. s was chosen: download-gentoo-iso-latest-dl_Spawns.sh $STAGE"
						    ./download-gentoo-iso-latest-dl_Spawns.sh $STAGE;;
    D) echo "2. d was chosen: amazing-make-partition-truncate.sh"
							./amazing-make-partition-truncate.sh $STAGE_${NUM}.dd;;
    F) echo "2. f was chosen: amazing-mount-fs-partitions.sh"
							./amazing-mount-fs-partitions.sh $STAGE_${NUM}.dd;;
    C) echo "3. c was chosen: genr8-chroot.sh"
							./genr8-chroot.sh /mnt/$STAGE_${NUM}.dd
	   echo "Unmounting. Loop device & Disk image remain.";;
esac

: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_HELP=2}
: ${DIALOG_EXTRA=3}
: ${DIALOG_ITEM_HELP=4}
: ${DIALOG_ESC=255}
#Check Dialog Return Codes
case $exit_status in
    $DIALOG_CANCEL)
      clear
      echo "Program terminated."
      exit
      ;;
    $DIALOG_ESC)
      clear
      echo "Program aborted." >&2
      exit 1
      ;;
    $DIALOG_OK)
      echo "Done. (selected $selected)"
      exit 0
      ;;
esac

