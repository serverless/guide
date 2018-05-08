#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

export DIR_EBOOK=$(realpath "$DIR/..")
export DIR_GUIDE=$(realpath "$DIR/../..")

export DIR_EBOOK_DEP="$DIR_EBOOK/dep"
export DIR_EBOOK_SRC="$DIR_EBOOK/src"
export DIR_EBOOK_DIST="$DIR_EBOOK/dist"

[ -d "$DIR_EBOOK_SRC"  ] || mkdir "$DIR_EBOOK_SRC"
[ -d "$DIR_EBOOK_DIST" ] || mkdir "$DIR_EBOOK_DIST"

export PATH="$DIR:$DIR_EBOOK_DEP/Calibre Portable/Calibre:$DIR_EBOOK/node_modules/.bin:$PATH"
export gitbook="$DIR_EBOOK/node_modules/gitbook-cli/bin/gitbook.js"

if [ -z "$GITBOOK_DIR" ]; then
  if [ -d "$HOME/.gitbook" ]; then
    export GITBOOK_DIR="$HOME/.gitbook"
  else
    export GITBOOK_DIR="$DIR_EBOOK/node_modules/gitbook"
  fi
fi
