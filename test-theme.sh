#!/bin/bash

PROFILE=default

source ./make-xpi.sh
for directory in ~/.thunderbird/*.${PROFILE}
do
  cp adwaita-thunderbird.xpi $directory/extensions/{CD8B5302-0A8E-4FE4-A25C-0DB881647B86}.xpi
done

killall thunderbird thunderbird-bin &>/dev/null; thunderbird &
