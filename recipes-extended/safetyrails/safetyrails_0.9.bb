DESCRIPTION = "Application in python for train derailment detection through GPIO analysis"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=4a4dcba7e9f35ff16fd3c325ea239fd6"

SRC_URI = "git://github.com/pleiades-br/arcturus-safetyRails.git;protocol=https;branch=main"
SRCREV = "fc285c7c3c06af5a14980d40bf0fbe8bfd543348"

S = "${WORKDIR}/git"

inherit setuptools3

do_install:append () {
    install -d ${D}${bindir}
    install -m 0755 sftrails.py ${D}${bindir}
}

RDEPENDS:${PN} += " python3-numpy python3-gpiod python3-pyaudio espeak"

