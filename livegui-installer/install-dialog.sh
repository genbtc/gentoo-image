#!/bin/sh
if ! command -v dialog >/dev/null; then
    echo "This program requires dialog to be installed."
fi
DIAHEIGHT=0;	DIAWIDTH=80;

source ./install-dialog-livegui.sh

exec 3>&1       #open FD3 as a clone of 1
#Command substitution inside subshell
selected=$(dialog \
    --title "Gentoo LiveGUI Installer" \
    --menu "Gentoo LiveGUI Installer" \
	$DIAHEIGHT $DIAWIDTH 0 \
    "2" "$Dialog2" \
    "3" "$Dialog3" \
    "4" "$Dialog4" \
    "5" "$Dialog5" \
    "C" "Chroot in (genr8-chroot.sh)" \
    "9" "$Dialog9" \
2>&1 1>&3)
#Fancy FD redirection stores selection in FD3
exit_status=$?  #numerical return code
exec 3>&-       #close FD3
#    "0" "$Dialog0" \
#    "1" "$Dialog1" \
#    "6" "$Dialog6" \
#    "7" "$Dialog7" \
#    "8" "$Dialog8" \

echo $selected
case $selected in
    0) echo "0. $Dialog0"; echo "$Info0";;
    1) echo "1. $Dialog1"; echo "$Info1";;
    2) echo "2. $Dialog2"; echo "$Info2";;
    3) echo "3. $Dialog3"; echo "$Info3";;
    4) echo "4. $Dialog4"; echo "$Info4";;
    5) echo "5. $Dialog5"; echo "$Info5"; exec "$Command6";;
    C) echo "C. chroot was chosen: using genr8-chroot.sh";;
    6) echo "6. $Dialog6"; echo "$Info6";;
    7) echo "7. $Dialog7"; echo "$Info7";;
    8) echo "8. $Dialog8"; echo "$Info8";;
    9) echo "9. $Dialog9"; echo "$Info9";;
esac

: ${DIALOG_OK=0}
: ${DIALOG_CANCEL=1}
: ${DIALOG_HELP=2}
: ${DIALOG_EXTRA=3}
: ${DIALOG_ITEM_HELP=4}
: ${DIALOG_ESC=255}
#Always Check Dialog Return Codes
case $exit_status in
    $DIALOG_CANCEL)
      echo "Program terminated."
      exit ;;
    $DIALOG_ESC)
      echo "Program aborted." >&2
      exit 1 ;;
    $DIALOG_OK)
      echo "Done. (selected $selected)"
      exit 0  ;;
esac
