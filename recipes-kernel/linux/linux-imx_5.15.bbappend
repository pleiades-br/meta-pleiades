FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

unset SRC_URI
unset IMX_KERNEL_CONFIG_AARCH32

SRC_URI:append:plds-myd-y6ull-arcturus = " \
    file://myb-imx6ull-14x14-base-arcturus.dts \
    file://myd-y6ull-emmc-arcturus.dts \
    file://myd-y6ull-gpmi-weim-arcturus.dts"


do_unpack:append() {
    bb.build.exec_func('copy_arcturus_files', d)
}

copy_arcturus_files() {
    cp -f myb-imx6ull-14x14-base-arcturus.dts myd-y6ull-emmc-arcturus.dts myd-y6ull-gpmi-weim-arcturus.dts ${S}/arch/arm/boot/dts
    #cp -f myd_y6ulx_defconfig ${S}/arch/arm/configs/
}




