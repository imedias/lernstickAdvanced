#!/bin/sh

SOURCE="false"

# variant specific features 
VARIANT="Kantonsschule Sursee "
cp variants/sursee/sursee.chroot config/hooks/ 
cp variants/sursee/sursee.list.chroot config/package-lists/
cp variants/sursee/rc.local config/includes.chroot/etc/

# common build
. ./functions.sh
init_build
configure
build_image

# cleanup
rm config/hooks/sursee.chroot
rm config/package-lists/sursee.list.chroot
rm config/includes.chroot/etc/rc.local
