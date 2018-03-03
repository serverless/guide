#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/env.sh"

[ ! -d "$DIR_EBOOK_SRC/assets" ]          || rm -rf "$DIR_EBOOK_SRC/assets"
[ ! -e "$DIR_EBOOK_SRC/book_SUMMARY.md" ] || rm -f  "$DIR_EBOOK_SRC/book_SUMMARY.md"
[ ! -e "$DIR_EBOOK_SRC/book_README.md"  ] || rm -f  "$DIR_EBOOK_SRC/book_README.md"
