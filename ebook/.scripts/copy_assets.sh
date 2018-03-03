#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/env.sh"

[ -d "$DIR_EBOOK_SRC/assets" ] || cp --recursive "$DIR_GUIDE/assets" "$DIR_EBOOK_SRC/assets"
