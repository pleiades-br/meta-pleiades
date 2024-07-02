FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:plds-myd-y6ull-arcturus = " \
    file://dts/myb-imx6ull-14x14-base-arcturus.dts \
    file://dts/myd-y6ull-emmc-arcturus.dts \
    file://dts/myd-y6ull-gpmi-weim-arcturus.dts \
    file://defconfig_arcturus"

IMX_KERNEL_CONFIG_AARCH32 = "defconfig_arcturus"

do_unpack:append:plds-myd-y6ull-arcturus() {
    bb.build.exec_func('copy_arcturus_files', d)
}

copy_arcturus_files() {
    cp -f dts/myb-imx6ull-14x14-base-arcturus.dts dts/myd-y6ull-emmc-arcturus.dts dts/myd-y6ull-gpmi-weim-arcturus.dts ${S}/arch/arm/boot/dts
    cp -f defconfig_arcturus ${S}/arch/arm/configs/
}




