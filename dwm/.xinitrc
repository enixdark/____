#!/bin/bash
# set keyboard layout to Swiss German
#setxkbmap ch

# Load .Xresources file
xrdb -merge ~/.Xresources

# Start xbindkeys
#xbindkeys &

# Set some defaults
export BROWSER=chromium &
export EDITOR=vim &
xdg-mime default evince.desktop application/pdf &

# Loop
while true
do
    # Set root title
    sh .xsetroot.sh

    # Check battery level
    BATT=$( acpi -b | sed 's/.*[charging|unknown], \([0-9]*\)%.*/\1/gi' )
    STATUS=$( acpi -b | sed 's/.*: \([a-zA-Z]*\),.*/\1/gi' )
    if ([ $BATT -le 5 ] && [ $STATUS == 'Discharging' ]); then
        # Beep
        echo -e "\007" >/dev/tty10 && sleep 0.2
        echo -e "\007" >/dev/tty10 && sleep 0.2
        echo -e "\007" >/dev/tty10 && sleep 0.2
        # Blink
        echo 'on' > /proc/acpi/ibm/light && sleep 1
        echo 'off' > /proc/acpi/ibm/light
    fi

    # Update every 10s
    sleep 10s
done &

# Set up rotated dual screen without touching my xorg.conf
xrandr --output DVI-1 --auto --rotate left --pos 0x0 --output DVI-0 --auto --pos 1080x720 --rotate normal

# Read .xsessionrc
sh ~/.xsessionrc &

# Set wallpaper
feh --bg-scale ~/.xwallpaper-dwm.png

# Set WM name (for Java apps)
wmname LG3D

# Run dwm
exec dwm
