#!/bin/bash
# 3rd progression to shellscript

# Cleanup, version 3

# User as root prayagKhanal
# Look at your log file if there is any error

$LOG_DIR =/var/log

# using variable to store path

cd $LOG_DIR
 
 # im in my var/log
 
 cat /dev/null > message
 cat /dev/null > wtmp
 
 #cleaning my log file
 
 echo "Logs cleaned up."
 
 exit
 
 # If permission denied error occurs run it with sudo command
 