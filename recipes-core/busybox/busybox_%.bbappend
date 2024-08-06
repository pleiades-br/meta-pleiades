FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://syslog.conf \
"

FILES:${PN} += " \
    ${sysconfdir}/syslog.conf \
"

do_install:append () {
    install -m 0644 ${WORKDIR}/syslog.conf ${D}${sysconfdir}
}
