#!/bin/bash

# customize these
WGET='/usr/local/bin/wget'
ICS2ORG='/Users/tminor/.emacs.d/ical2org.awk'
ICSFILE='/Users/tminor/org/calendar.ics'
ORGFILE='/Users/tminor/org/work/calendar.org'
URL='https://calendar.google.com/calendar/ical/thomas.minor%40usg.edu/private-472001384d103e16ce6d093865d66a2c/basic.ics'

# no customization needed below

$WGET -O $ICSFILE $URL
$ICS2ORG < $ICSFILE > $ORGFILE
