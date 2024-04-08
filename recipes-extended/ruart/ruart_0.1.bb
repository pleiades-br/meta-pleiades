DESCRIPTION = "Simple application to connect into uart to send and receive data write in Rust"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=8e66d58e4d5ff0650d10b76e6c39c852"

SRC_URI = "git://github.com/alvictal/ruart.git;protocol=https;branch=main"
SRCREV = "9464b426ac4ff99fefc9e31b8c56bfc886ba8ae8"

inherit cargo

SRC_URI += " \
    crate://crates.io/termios/0.3.3 \
    crate://crates.io/libc/0.2.153 \
"

S = "${WORKDIR}/git"

