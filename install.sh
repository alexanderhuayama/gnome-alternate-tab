#!/bin/bash
gnome_v=""
current_directory="$(pwd)"
source_directory="assets/alternate-tab@gnome-shell-extensions.gcampax.github.com"
out_directory="/usr/share/gnome-shell/extensions/"

{
  gnome_v="$(gnome-shell --version)"
} || {
  echo "[x] Is not gnome enviroment"
  exit 1
}

echo "Gnome version: $gnome_v"

if [ ! -d "$out_directory" ]; then
    mkdir -p "$out_directory"
fi

cp "$current_directory/$source_directory" "$out_directory" -r
apt-get install gnome-tweak-tool
