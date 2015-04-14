#!/bin/sh
## APK Installer script
## Author: Vitaliy Konovalov @vitovalov
if [ $# -eq 0 ]; then
    echo "No APK file specified"
    exit 0
fi
source ~/.bash_profile
if ! which adb >/dev/null; then
	source ~/.zshrc
	if ! which adb >/dev/null; then
		echo "adb cannot be found. Set it up in .bash_profile"
		exit 0
	fi
fi

var=`adb devices | awk '{ } END { print NR }'`
if [ "$var" = 3 ]; then
	adb install -r $1 | sed "1 d"
elif [ "$var" -ge 3 ]; then
	for SERIAL in $(adb devices | grep -v List | cut -f 1);
	do adb -s $SERIAL install -r $1 | sed "1 d" &
	done

	for job in `jobs -p`
	do wait $job
	done
else
	echo "No devices connected"
fi
