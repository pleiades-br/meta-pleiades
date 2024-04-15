DESCRIPTION = "Application in python for train derailment detection through GPIO analysis"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=4a4dcba7e9f35ff16fd3c325ea239fd6"

SRC_URI = "git://github.com/pleiades-br/arcturus-safetyRails.git;protocol=https;branch=main"
SRCREV = "2b6cd05d41b1ee956578c7cc5f94bd9dc616aa86"

S = "${WORKDIR}"

inherit setuptools3

do_install:append () {
    install -d ${D}${bindir}
    install -m 0755 python-safetyRails.py ${D}${bindir}
}

RDEPENDS_${PN} += " \
    python3-numpy \
    python3-periphery \
    python3-pyaudio \
"

