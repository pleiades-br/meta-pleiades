DESCRIPTION = "Application in python for train derailment detection through GPIO analysis"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=8e66d58e4d5ff0650d10b76e6c39c852"

SRC_URI = "github.com/pleiades-br/arcturus-safetyRails.git;protocol=https;branch=main"
SRCREV = "2b6cd05d41b1ee956578c7cc5f94bd9dc616aa86"

S = "${WORKDIR}"

inherit setuptools

do_install:append () {
    install -d ${D}${bindir}
    install -m 0755 python-safetyRails.py ${D}${bindir}
}

RDEPENDS_${PN} += " \
    python3-numpy \
    python3-periphery \
    python3-pyaudio \
"

