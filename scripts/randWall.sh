#!/bin/zsh

# find command paths 
wal_path=$(which wal)
pywalfox_path=$(which pywalfox)

wall_arr=("$HOME/Pictures/wallpapers/pywal_wall"/*)

random_index=$((RANDOM % ${#wall_arr[@]}))
random_wallpaper="${wall_arr[$random_index]}"

swww img "$random_wallpaper" --transition-type center --transition-step 60 --transition-fps 120

sleep 0.3

${wal_path} -i "$random_wallpaper" --backend wall

sleep 0.1

${pywalfox_path} update
