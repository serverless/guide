#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR_EBOOK=$(realpath "$DIR/..")
DIR_GUIDE=$(realpath "$DIR/../..")

export PATH="$DIR:$DIR_EBOOK/Calibre Portable/Calibre:$DIR_GUIDE/node_modules/.bin:$PATH"
export gitbook="$DIR_GUIDE/node_modules/gitbook-cli/bin/gitbook.js"
