# Copyright (C) 2015 Freescale Semiconductor
# Copyright 2017-2019 NXP
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "NXP Image to validate i.MX machines. \
This image contains everything used to test i.MX machines including GUI, \
demos and lots of applications. This creates a very large image, not \
suitable for production."
LICENSE = "MIT"

inherit core-image

### WARNING: This image is NOT suitable for production use and is intended
###          to provide a way for users to reproduce the image used during
###          the validation process of i.MX BSP releases.

## Select Image Features
IMAGE_FEATURES += " \
    splash \
    ssh-server-dropbear \
"
ERPC_COMPS ?= ""
ISP_PKGS = ""

CORE_IMAGE_EXTRA_INSTALL += " \
    imx-uuc \
    packagegroup-core-full-cmdline \
    packagegroup-imx-tools-audio \
    packagegroup-fsl-gstreamer1.0 \
    packagegroup-fsl-gstreamer1.0-full \
    myir-regulatory \
    bridge-utils \
    firmware-brcm43362 \
    firmware-imx \
    v4l-utils \
    libjpeg-turbo \
    hostapd \
    vsftpd \
    udev-extraconf \
    libjpeg-turbo \
    libgpiod \
    libgpiod-tools \
    iptables \
    i2c-tools \
    mtd-utils \
	wifi-bt-conf \
"
IMAGE_INSTALL:append = "libgpiod"