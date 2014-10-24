#!/bin/bash
#
# wrapper to allow geer access to rs_/si_ commands
# that need root access
#
##########################################

case $1 in


	ls_image)
		echo "Listing images.."
		sudo si_lsimage
		;;

	get_image)
		echo "Getting image..."
		PARMS="$@"
		sudo si_getimage $PARMS
		;;
	cp_image)
		echo "Copying image.."
		SOURCE=$1
		TARGET=$2
		sudo si_cpimage $SOURCE $TARGET
		;;
        netboot)
		IP=$2
		echo "Making client $IP netboot.."
		sudo si_mkclientnetboot --netboot --arch i386 --flavor hdp-sles32 --verbose 2>&1
		;;

	*)
		echo "Can't parse option"
		echo "See geerapper.sh"
		echo "Also check sudoers"
		;;
esac
	
