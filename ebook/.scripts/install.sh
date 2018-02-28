#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/env.sh"

if [ ! -d "$DIR_EBOOK/Calibre Portable" ]; then
  installer="$DIR_EBOOK/calibre-portable-installer.exe"
  wget --no-check-certificate -O "$installer" "https://download.calibre-ebook.com/3.18.0/calibre-portable-installer-3.18.0.exe"
  "$installer" "."
fi
