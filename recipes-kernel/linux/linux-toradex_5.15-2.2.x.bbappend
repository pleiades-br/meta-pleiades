FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

unset KBUILD_DEFCONFIGS

SRC_URI:plds-verdin-imx8mp-canopus += " \
            file://verdin-imx8mp/defconfig-canopus \
            file://dts/canopus/imx8mp-verdin-canopus.dtsi \
            file://dts/canopus/imx8mp-verdin-wifi-canopus.dts "

SRC_URI:verdin-imx8mp += " \
            file://verdin-imx8mp/defconfig-yavia \
            file://dts/yavia/imx8mp-verdin-dev.dtsi \
            file://dts/yavia/imx8mp-verdin-wifi-yavia.dts \
            file://dts/yavia/imx8mp-verdin-yavia.dtsi \
            file://dts/yavia/imx8mp-verdin.dtsi  "

do_patchextra:plds-verdin-imx8mp-canopus () {
    install -d ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
    install -m 0644 ${WORKDIR}/dts/canopus/imx8mp-verdin-wifi-canopus.dts ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
    install -m 0644 ${WORKDIR}/dts/canopus/imx8mp-verdin-canopus.dtsi ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale

    rm ${WORKDIR}/defconfig
    install -m 0644 ${WORKDIR}/verdin-imx8mp/defconfig-canopus ${WORKDIR}/defconfig
}

do_patchextra:verdin-imx8mp () {
    install -d ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
    install -m 0644 ${WORKDIR}/dts/yavia/imx8mp-verdin-dev.dtsi ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
    install -m 0644 ${WORKDIR}/dts/yavia/imx8mp-verdin-wifi-yavia.dts ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
    install -m 0644 ${WORKDIR}/dts/yavia/imx8mp-verdin-yavia.dtsi ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
    install -m 0644 ${WORKDIR}/dts/yavia/imx8mp-verdin.dtsi ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale

    rm ${WORKDIR}/defconfig
    install -m 0644 ${WORKDIR}/verdin-imx8mp/defconfig-yavia ${WORKDIR}/defconfig
}

addtask patchextra after do_patch before do_compile
