#!/bin/bash

cd theme

VERSION=$(cat install.rdf | grep em:version | cut -f2 -d'>' | cut -f1 -d'<')

zip -FS -r ../gnome-thunderbird-$VERSION.xpi *

cd -

ln -sf gnome-thunderbird-$VERSION.xpi gnome-thunderbird.xpi
