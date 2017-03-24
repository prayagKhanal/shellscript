#!/bin/bash
# 3rd progression to shellscript

# Cleanup, version 3
# I am running this script on mac macOS sierra

# User as root prayagKhanal
# Look at your log file if there is any error

LOG_DIR=/var/log
ROOT_UID=0 	# Only user with $UID 0 have root privileges.
LINES=50		# Default number of lines saved.
E_XCD=86		# Can't change directory?
E_NOTROOT=87	# Non-root exit error.


if [ $UID -ne "$ROOT_UID" ]
then
	echo "Must be root to run this script."
	exit $E_NOTROOT
fi

if [ -n "$1" ]
# Test whether command-line argument is present (non-empty).
then
	lines=$1
else
	lines=$LINES # Default, if not specified on command-line.
fi

cd $LOG_DIR



if [ "pwd" != "$LOG_DIR" ] # or if [ "$PWD" != "$LOG_DIR" ]
						   # Not in /var/log
then
	echo "Can't change to $LOG_DIR."
	exit $E_XCD
fi # Double check if in right directory before messing with log file.

tail -n $lines message > mesg.temp # Save last section of message log file.
									# Rename it as system log file.
									
cat /dev/null > wtmp 
echo "Log files cleaned up."

exit 0
 # Make sure to put pwd or $PWD to check the path with $LOG_DIR
 #If in mac replace pwd with $PWD
 # If permission denied error occurs run it with sudo command
 