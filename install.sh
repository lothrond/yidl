#!/bin/bash

PROG=yidl

# Set OS switch case.
case "$(uname -m)" in
	aarch64) ANDROID='1' ;;
	*) ;;
esac

# Check return values.
function _check_returns(){
	if [ $? -eq 0 ]; then
		exit 0
	else
		exit 1
	fi
}

# Install all objects on OS.
if [ "$ANDROID" == "1" ]; then
	ADIR=/data/data/com.termux/files/usr
	cp -v $PROG $ADIR/bin &&
	cp -v ${PROG}.1 $ADIR/share/man/man1
	_check_returns
else
	LDIR=/usr/local
	sudo cp -v $PROG $LDIR/bin &&
	sudo cp -v ${PROG}.1 $LDIR/man/man1
	_check_returns	
fi

exit $?
