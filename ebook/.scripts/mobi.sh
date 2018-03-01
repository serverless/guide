#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/install.sh"

gitbook mobi "$DIR_GUIDE" "$DIR_EBOOK/guide.mobi"
