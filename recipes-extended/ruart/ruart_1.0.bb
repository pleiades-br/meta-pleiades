DESCRIPTION = "Simple application to connect into uart to send and receive data write in Rust"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=8e66d58e4d5ff0650d10b76e6c39c852"

SRC_URI = "git://github.com/alvictal/ruart.git;protocol=https;branch=main"
SRCREV = "04374df3789117249c6b8aaee40789513c5b897e"

inherit cargo

SRC_URI += " \
    crate://crates.io/termios/0.3.3 \
"

S = "${WORKDIR}/git"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ruart ${D}${bindir}
}