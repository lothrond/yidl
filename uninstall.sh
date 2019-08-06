#!/bin/bash
#
# If you are on android, and use termux.
# Or, just on GNU/Linux.
# Then, this script will help you.

set -o errexit

PROG=yidl
ANDROID=0
SET_ALIAS=true

# Set OS switch case.
case "$(uname -m)" in
	aarch64) ANDROID='1';;
	*) ;;
esac

if [ "$ANDROID" == "1" ]; then
	ADIR=/data/data/com.termux/files/usr
    AHOME=/data/data/com.termux/files/home

	rm -fv ${ADIR}/bin/${PROG}
	rm -fv ${ADIR}/share/man/man1/${PROG}.1

    if [ "$SET_ALIAS" == "true" ]; then
        sed -i 's/alias yt="yidl"//g' ${AHOME}/.bashrc
    fi
else
    if [ $UID -ne 0 ]; then
        echo "Needs root..."
        exit 1
    fi

	LDIR=/usr/local

	rm -fv ${LDIR}/bin/${PROG}
	rm -fv ${LDIR}/man/man1/${PROG}.1
fi

exit $?
