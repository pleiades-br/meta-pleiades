SUMMARY = "Syslog config for pleiades boards"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

RDEPENDS:${PN} = "busybox"

S = "${WORKDIR}"

SRC_URI += " \
    file://syslog.conf \
"

do_install () {
    install -m 0644 syslog.conf ${D}${sysconfdir}/
}
