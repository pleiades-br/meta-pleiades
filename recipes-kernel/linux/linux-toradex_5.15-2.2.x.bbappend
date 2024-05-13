FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

unset KBUILD_DEFCONFIG

SRC_URI:append:plds-verdin-imx8mp-canopus = " \
            file://verdin-imx8mp/defconfig-canopus \
            file://dts/canopus/imx8mp-verdin-canopus.dtsi \
            file://dts/canopus/imx8mp-verdin-wifi-canopus.dts "

SRC_URI:append:verdin-imx8mp = " \
            file://verdin-imx8mp/defconfig-yavia \
            file://dts/yavia/imx8mp-verdin-yavia.dtsi \
            file://patches/0001-adding-debug-max6897.patch"

do_patchextra() {
    install -d ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale

    if [ "${MACHINE}" == "plds-verdin-imx8mp-canopus" ]
    then
        echo "installing ${MACHINE} dts..."
        install -m 0644 ${WORKDIR}/dts/canopus/imx8mp-verdin-wifi-canopus.dts ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale
        install -m 0644 ${WORKDIR}/dts/canopus/imx8mp-verdin-canopus.dtsi ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale

        echo "installing ${MACHINE} defconfig..."
        cp ${WORKDIR}/verdin-imx8mp/defconfig-canopus ${WORKDIR}/defconfig
    else
        echo "installing ${MACHINE} dts..."
        install -m 0644 ${WORKDIR}/dts/yavia/imx8mp-verdin-yavia.dtsi ${STAGING_KERNEL_DIR}/arch/arm64/boot/dts/freescale

        echo "installing ${MACHINE} defconfig..."
        install -m 0644 ${WORKDIR}/verdin-imx8mp/defconfig-yavia ${WORKDIR}/defconfig
    fi
}

addtask patchextra after do_patch before do_compile
