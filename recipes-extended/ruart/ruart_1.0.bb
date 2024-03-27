DESCRIPTION = "Simple application to connect into uart to send and receive data write in Rust"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=2d36810547f11ad38231d88bf832bcf3"

SRC_URI = "git://github.com/alvictal/ruart.git;protocol=https;branch=current"
SRCREV = "04374df3789117249c6b8aaee40789513c5b897e"

inherit cargo

S = "${WORKDIR}/git"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ruart ${D}${bindir}
}