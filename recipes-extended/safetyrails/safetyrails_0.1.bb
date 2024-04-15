DESCRIPTION = "Application in python for train derailment detection through GPIO analysis"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=4a4dcba7e9f35ff16fd3c325ea239fd6"

SRC_URI = "git://github.com/pleiades-br/arcturus-safetyRails.git;protocol=https;branch=main"
SRCREV = "0ab3008e122a01fc038f46d08d5f88c8bc6dc580"

S = "${WORKDIR}/git"

inherit setuptools3

do_install:append () {
    install -d ${D}${bindir}
    install -m 0755 python-safetyrails.py ${D}${bindir}
}

RDEPENDS_${PN} += " \
    python3-numpy \
    python3-periphery \
    python3-pyaudio \
"

