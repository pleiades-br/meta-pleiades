FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

unset KBUILD_DEFCONFIGS

SRC_URI += " \
            file://verdin-imx8mp/defconfig \
            file://dts/imx8mp-verdin-canopus.dtsi \
            file://dts/imx8mp-verdin-wifi-canopus.dts "

do_patchextra () {
    install -d ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
    install -m 0644 ${WORKDIR}/dts/imx8mp-verdin-wifi-canopus.dts ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
    install -m 0644 ${WORKDIR}/dts/imx8mp-verdin-canopus.dtsi ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
}

addtask patchextra after do_patch before do_compile
