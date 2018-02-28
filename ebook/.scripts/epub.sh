#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$DIR/install.sh"

gitbook epub "$DIR/../.." "$DIR/../guide.epub"
