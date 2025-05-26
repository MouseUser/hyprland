#!/usr/bin/env bash

### Bash script to select random wallpaper and run
### with linux-wallpaperengine AUR package

# set wallpaper engine asset directory
wallpaper_dir="/home/avery-a/.local/share/Steam/steamapps/workshop/content/431960/"

# find all workshop wallpapers
papers=($(find "$wallpaper_dir" -mindepth 1 -maxdepth 1 -type d))

# check if wallpapers is > 0
if [${#papers[@]} -eq 0]; then
    echo "No wallpapers found."
    exit 1
fi

# pick random wallpaper
random_index=$((RANDOM % ${#papers[@]}))

# save it
random_paper="${papers[$random_index]}"

# call wallpaperengine command with random wallpaper
linux-wallpaperengine --screen-root DP-2 --scaling fill --clamp border --disable-mouse --fps 30 --silent --bg "$random_paper" & \
linux-wallpaperengine --screen-root HDMI-A-1 --scaling fill --clamp border --disable-mouse --fps 30 --silent --bg "$random_paper" & \
linux-wallpaperengine --screen-root HDMI-A-2 --scaling fill --clamp border --disable-mouse --fps 30 --silent --bg "$random_paper"
# is this ^ optimal? probably not but i dont care
