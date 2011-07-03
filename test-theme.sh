#!/bin/bash

PROFILE=default

source ./make-xpi.sh
cp adwaita-thunderbird.xpi ~/.thunderbird/*.${PROFILE}/extensions/{CD8B5302-0A8E-4FE4-A25C-0DB881647B86}.xpi

killall thunderbird thunderbird-bin &>/dev/null; thunderbird -chromebug &
