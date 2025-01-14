#!/bin/bash

while true; do
	battery_level=$(cat /sys/class/power_supply/BAT*/capacity 2>/dev/null)
	
	if [ $battery_level -lt 20]; then
		notify-send -u critical "Battery < 20%" "Connect charger soon!"
	fi

	sleep 300
done
