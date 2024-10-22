DESCRIPTION = "Application in python for train derailment detection through GPIO analysis"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=4a4dcba7e9f35ff16fd3c325ea239fd6"
FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI = " \
    git://github.com/pleiades-br/arcturus-safetyRails.git;protocol=https;branch=main \
    file://sftrail.conf \
    file://pre_dtmf.wav \
    file://pos_dtmf.wav \
    file://text_output.wav \
    "
SRCREV = "9a4e70c3a9748345ee218c867dd4fed2b438d59c"

S = "${WORKDIR}/git"

inherit setuptools3

do_install:append () {
    install -d ${D}${bindir}
    install -m 0755 sftrails ${D}${bindir}

    install -d ${D}${sysconfdir}/sftrails/
    install -m 0644 sftrails.conf ${D}${sysconfdir}/sftrails/
    
    install -d ${D}/media/
    install -m 0666 pre_dtmf.wav ${D}/media/
    install -m 0666 pos_dtmf.wav ${D}/media/
    install -m 0666 text_output.wav ${D}/media/
}

RDEPENDS:${PN} += " python3-numpy python3-gpiod python3-pyaudio espeak"

