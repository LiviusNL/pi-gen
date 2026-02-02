#!/bin/bash -e

mkdir -p "${ROOTFS_DIR}/boot/firmware"

if ! [ -L "${ROOTFS_DIR}/boot/overlays" ]; then
	ln -s firmware/overlays "${ROOTFS_DIR}/boot/overlays"
fi

install -m 644 files/cmdline.txt "${ROOTFS_DIR}/boot/firmware/"
install -m 644 files/config.txt "${ROOTFS_DIR}/boot/firmware/"
