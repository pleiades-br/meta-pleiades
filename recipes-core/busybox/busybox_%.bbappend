FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI += " \
    file://syslog.conf \
"

do_install:append () {
    install -m 0644 syslog.conf ${D}${sysconfdir}
}
