DESCRIPTION = "Application in python for train derailment detection through GPIO analysis"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=4a4dcba7e9f35ff16fd3c325ea239fd6"

SRC_URI = "git://github.com/pleiades-br/arcturus-safetyRails.git;protocol=https;branch=main"
SRCREV = "fd87d9cd2733d469ccaa5a683d0a9003e109fc5b"

S = "${WORKDIR}/git"

inherit setuptools3

do_install:append () {
    install -d ${D}${bindir}
    install -m 0755 python-safetyrails.py ${D}${bindir}
}

RDEPENDS:${PN} += " python3-numpy python3-periphery python3-pyaudio"

