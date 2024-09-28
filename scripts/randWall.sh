#!/bin/zsh

# find wal command path 
wal_path=$(which wal)
pywalfox_path=$(which pywalfox)

# replace path with your wallpaper directory containing images
wall_arr=("$HOME/Pictures/wallpapers/Abstract"/*)
randInd=$((RANDOM % ${#wall_arr[@]}))
randWall="${wall_arr[$randInd]}"
swww img "$randWall" --transition-type center --transition-step 60 --transition-fps 120
sleep 0.3
${wal_path} -i "$randWall" --backend colorz
sleep 0.1
${pywalfox_path} update
