FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

RDEPENDS:${PN} = "hostapd"

SRC_URI = " \
    file://hostapd.conf \
"

do_install() {
    install -d ${D}${sysconfdir}/
    install -m 0644 ${WORKDIR}/hostapd.conf  ${D}${sysconfdir}/
}