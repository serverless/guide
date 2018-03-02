#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/env.sh"

# under Windows, download and install a PortableApps version of Calibre
if [ "$OSTYPE" == "msys" -o "$OSTYPE" == "cygwin" ]; then
  # check whether the PortableApps directory already exists
  if [ ! -d "$DIR_EBOOK/Calibre Portable" ]; then
    installer="$DIR_EBOOK/calibre-portable-installer.exe"
    wget -nc --no-check-certificate -O "$installer" "https://download.calibre-ebook.com/3.18.0/calibre-portable-installer-3.18.0.exe"
    "$installer" "$DIR_EBOOK"
  fi
fi

# For other platforms, Calibre is an external dependency.
# Please confirm that its "ebook-convert" binary can be found in $PATH:
#   which "ebook-convert"
