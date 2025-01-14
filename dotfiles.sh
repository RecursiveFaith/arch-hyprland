#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

rsync -a $DIR/.config/hypr/ $HOME/.config/hypr/
rsync -a $DIR/.config/mako/ $HOME/.config/mako/
rsync -a $DIR/.config/waybar/ $HOME/.config/waybar/
