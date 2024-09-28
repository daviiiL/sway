#!/bin/zsh

# find wal command path 
wal_path=$(which wal)

# replace path with your wallpaper directory containing images
wall_arr=("$HOME/Pictures/wallpapers/Abstract"/*)
randInd=$((RANDOM % ${#wall_arr[@]}))
randWall="${wall_arr[$randInd]}"
swww img "$randWall" --transition-type center --transition-step 60 --transition-fps 120
sleep 1
${wal_path} -i "$randWall"
