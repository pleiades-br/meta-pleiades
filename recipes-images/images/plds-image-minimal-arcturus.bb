# Copyright (C) 2015 Freescale Semiconductor
# Copyright 2017-2019 NXP
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "NXP Image to validate i.MX machines. \
This image contains everything used to test i.MX machines including GUI, \
demos and lots of applications. This creates a very large image, not \
suitable for production."
LICENSE = "MIT"

inherit core-image

## Select Image Features
IMAGE_FEATURES += " \
    debug-tweaks \
    splash \
    ssh-server-dropbear \
"
ERPC_COMPS ?= ""
ISP_PKGS = ""

CORE_IMAGE_EXTRA_INSTALL += " \
    imx-uuc \
    packagegroup-core-base-utils \
    packagegroup-imx-tools-audio \
    packagegroup-fsl-gstreamer1.0 \
    packagegroup-fsl-gstreamer1.0-full \
    python3 \
    myir-regulatory \
    bridge-utils \
    firmware-imx \
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
"
IMAGE_INSTALL:append = " libgpiod"
IMAGE_INSTALL:append = " safetyrails"
IMAGE_INSTALL:append = " kernel-module-eg91-ctrl"
IMAGE_INSTALL:append = " networkmanager"
IMAGE_INSTALL:append = " modemmanager"
