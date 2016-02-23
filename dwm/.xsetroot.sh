#!/bin/bash
DATETIME=`date`
UPTIME=`uptime | sed 's/.*up\s*//' | sed 's/,\s*[0-9]* user.*//' | sed 's/  / /g'`
MEMERY=`free | grep Mem | awk '{print $4/$2 * 100.0}'`
VOLUME=$( amixer sget Master | grep -e 'Front Left:' | \
    sed 's/[^\[]*\[\([0-9]\{1,3\}%\).*\(on\|off\).*/\2 \1/' | sed 's/off/M/' | sed 's/on //' )
UNREADMAIL=`cat .unreadmail`
#BATTERYSTATE=$( acpi -b | awk '{ split($5,a,":"); print substr($3,0,2), $4, "["a[1]":"a[2]"]" }' | tr -d ',' )
BATTERYSTATE=`upower -i $(upower -e | grep BAT) | grep --color=never -E "percentage" | cut -c26-35`
if [ `date +%S` == 30 -o `date +%S` == 00 ]; then python imap_check_unread.py > .unreadmail; fi
xsetroot -name "Unread ${UNREADMAIL} | ${MEMERY} | ${VOLUME} | ${DATETIME} | Up ${UPTIME}h | ${BATTERYSTATE}"
