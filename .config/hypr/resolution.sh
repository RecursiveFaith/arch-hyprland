#!/bin/bash

if xrandr | grep "HDMI.*connected"; then
	hyprctl keyword monitor ",preferred,auto,2"
else
	hyprctl keyword monitor ",preferred,auto,1.5"
fi
