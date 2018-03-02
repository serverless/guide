#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/env.sh"

# under Windows, download and install a PortableApps version of Calibre
if [ "$OSTYPE" == "msys" -o "$OSTYPE" == "cygwin" ]; then
  # check whether the PortableApps directory already exists
  if [ ! -d "$DIR_EBOOK_DEP/Calibre Portable" ]; then
    [ -d "$DIR_EBOOK_DEP" ] || mkdir "$DIR_EBOOK_DEP"

    installer="$DIR_EBOOK_DEP/calibre-portable-installer.exe"
    wget -nc --no-check-certificate -O "$installer" "https://download.calibre-ebook.com/3.18.0/calibre-portable-installer-3.18.0.exe"
    "$installer" "$DIR_EBOOK_DEP"
  fi
fi

# For other platforms, Calibre is an external dependency.
# Please confirm that its "ebook-convert" binary can be found in $PATH:
#   which "ebook-convert"
