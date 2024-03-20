FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI += " \
            file://config/verdin-imx8mp-canopus_defconfig "

do_patchextra () {
    install -m 0644 ${WORKDIR}/config/verdin-imx8mp-canopus_defconfig ${S}/configs/
}

addtask patchextra after do_patch before do_compile