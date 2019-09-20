#!/bin/sh


case $1 in
	formuler1)
		SRC="https://raw.githubusercontent.com/Dima73/pli-openmultibootmanager/master/nandsim/formuler1/kernel-module-nandsim.ipk"
		DEST=/tmp/kernel-module-nandsim.ipk
		if which wget >/dev/null 2>&1 ; then
			wget --no-check-certificate -O $DEST $SRC
		else
			echo >&2 "install-nandsim: cannot find wget"
			opkg update && opkg install wget
			if which wget >/dev/null 2>&1 ; then
				wget --no-check-certificate -O $DEST $SRC
			fi
		fi
		if ! [ -f $DEST ] ; then
			echo >&2 "install-nandsim: download failed"
			exit 1
		else
			opkg install /tmp/kernel-module-nandsim.ipk
		fi
		exit 0
	;;
	formuler3)
		SRC="https://raw.githubusercontent.com/Dima73/pli-openmultibootmanager/master/nandsim/formuler3/kernel-module-nandsim.ipk"
		DEST=/tmp/kernel-module-nandsim.ipk
		if which wget >/dev/null 2>&1 ; then
			wget --no-check-certificate -O $DEST $SRC
		else
			echo >&2 "install-nandsim: cannot find wget"
			opkg update && opkg install wget
			if which wget >/dev/null 2>&1 ; then
				wget --no-check-certificate -O $DEST $SRC
			fi
		fi
		if ! [ -f $DEST ] ; then
			echo >&2 "install-nandsim: download failed"
			exit 1
		else
			opkg install /tmp/kernel-module-nandsim.ipk
		fi
		exit 0
	;;
	formuler4)
		SRC="https://raw.githubusercontent.com/Dima73/pli-openmultibootmanager/master/nandsim/formuler4/kernel-module-nandsim.ipk"
		DEST=/tmp/kernel-module-nandsim.ipk
		if which wget >/dev/null 2>&1 ; then
			wget --no-check-certificate -O $DEST $SRC
		else
			echo >&2 "install-nandsim: cannot find wget"
			opkg update && opkg install wget
			if which wget >/dev/null 2>&1 ; then
				wget --no-check-certificate -O $DEST $SRC
			fi
		fi
		if ! [ -f $DEST ] ; then
			echo >&2 "install-nandsim: download failed"
			exit 1
		else
			opkg install /tmp/kernel-module-nandsim.ipk
		fi
		exit 0
	;;
	multiboot_formuler)
		SRC="https://raw.githubusercontent.com/Dima73/pli-openmultibootmanager/master/src/bin/mips/formuler/open_multiboot"
		DEST=/tmp/open_multiboot
		if which wget >/dev/null 2>&1 ; then
			wget --no-check-certificate -O $DEST $SRC
		else
			echo >&2 "install-open_multiboot: cannot find wget"
			opkg update && opkg install wget
			if which wget >/dev/null 2>&1 ; then
				wget --no-check-certificate -O $DEST $SRC
			fi
		fi
		if ! [ -f $DEST ] ; then
			echo >&2 "install-open_multiboot: download failed"
			exit 1
		else
			chmod 755 /tmp/open_multiboot
			SIZE="$(du -k "/tmp/open_multiboot" | awk '{ print $1 }')"
			if [ $SIZE -gt 100 ] ; then 
				echo >&2 "install-open_multiboot: download failed not bin file"
				exit 1
			else
				mv /tmp/open_multiboot /sbin/open_multiboot
				echo "1" > /usr/lib/enigma2/python/Plugins/Extensions/OpenMultiboot/.open_multiboot_formuler
				echo >&2 "install-open_multiboot: download done"
			fi
		fi
		exit 0
	;;
	dmm_nfidump)
		SRC="https://raw.githubusercontent.com/Dima73/pli-openmultibootmanager/master/src/bin/mips/dmm_nfidump/nfidump_1.0_all.ipk"
		DEST=/tmp/nfidump_1.0_all.ipk
		if which wget >/dev/null 2>&1 ; then
			wget --no-check-certificate -O $DEST $SRC
		else
			echo >&2 "install-nfidump: cannot find wget"
			opkg update && opkg install wget
			if which wget >/dev/null 2>&1 ; then
				wget --no-check-certificate -O $DEST $SRC
			fi
		fi
		if ! [ -f $DEST ] ; then
			echo >&2 "install-nfidump: download failed"
			exit 1
		else
			opkg remove nfidump
			opkg install /tmp/nfidump_1.0_all.ipk
		fi
		exit 0
	;;
	*)
		echo " "
		echo "Options: $0 {formuler1|formuler3|formuler4|multiboot_formuler|dmm_nfidump}"
		echo " "
esac

echo "Done..."

exit 0
