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
	cp -v "$PROG" ${ADIR}/bin
	cp -v "${PROG}.1" ${ADIR}/share/man/man1
    if [ "$SET_ALIAS" == "true" ]; then
        echo 'alias yt="yidl"' > ${AHOME}/.bashrc
    fi
else
	LDIR=/usr/local
	sudo cp -v "$PROG" ${LDIR}/bin &&
	sudo cp -v "${PROG}.1" ${LDIR}/man/man1
fi

exit $?
