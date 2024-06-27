FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:plds-myd-y6ull-arcturus = " \
    file://dts/myb-imx6ull-14x14-base-arcturus.dts \
    file://dts/myd-y6ull-emmc-arcturus.dts \
    file://dts/myd-y6ull-gpmi-weim-arcturus.dts"


do_unpack:append:plds-myd-y6ull-arcturus() {
    bb.build.exec_func('copy_arcturus_files', d)
}

copy_arcturus_files() {
    cp -f myb-imx6ull-14x14-base-arcturus.dts myd-y6ull-emmc-arcturus.dts myd-y6ull-gpmi-weim-arcturus.dts ${S}/arch/arm/boot/dts
    #cp -f myd_y6ulx_defconfig ${S}/arch/arm/configs/
}




