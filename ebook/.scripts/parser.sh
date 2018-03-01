#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/env.sh"

if [ ! -e "$DIR_GUIDE/book_README.md" -o ! -e "$DIR_GUIDE/book_SUMMARY.md" ]; then
  node "$DIR/parser.js"
fi
