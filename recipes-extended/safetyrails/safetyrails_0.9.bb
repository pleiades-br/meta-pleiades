DESCRIPTION = "Application in python for train derailment detection through GPIO analysis"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=4a4dcba7e9f35ff16fd3c325ea239fd6"

SRC_URI = "git://github.com/pleiades-br/arcturus-safetyRails.git;protocol=https;branch=main"
SRCREV = "65e66742a9f6de4d5a77e5ce0328a13362335002"

S = "${WORKDIR}/git"

inherit setuptools3

do_install:append () {
    install -d ${D}${bindir}
    install -d ${D}${sysconfdir}/sftrails/
    install -m 0755 sftrails.py ${D}${bindir}
}

RDEPENDS:${PN} += " python3-numpy python3-gpiod python3-pyaudio espeak"

