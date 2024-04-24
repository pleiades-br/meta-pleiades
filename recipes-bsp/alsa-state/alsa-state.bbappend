FILESEXTRAPATHS:prepend := "${THISDIR}/alsa-state/:"

# make this machine specific, as we have different codecs with different settings
PACKAGE_ARCH:tdx = "${MACHINE_ARCH}"

SRC_URI:append:mx8m-generic-bsp:tdx = " \
    file://asound-canopus.conf \
    file://asound-canopus.state \
"

FILES:${PN} += "${sysconfdir}/asound-*.conf"

do_install:append:mx8m-generic-bsp:tdx () {
    # Remove the default asound.conf, we need set up asound.conf dynamically
    # at runtime to support both dev/dahlia boards.
    rm -f ${D}${sysconfdir}/asound.conf
    rm -f ${D}${localstatedir}/lib/alsa/asound.state
    install -m 0644 ${WORKDIR}/asound-*.conf ${D}${sysconfdir}
    install -m 0644 ${WORKDIR}/asound-*.state ${D}${localstatedir}/lib/alsa
}

# Invalidate the default pkg_postinst in oe-core, this ensures our ontarget
# postinst to be the only one to run during package installation.
pkg_postinst:${PN}:mx8m-generic-bsp:tdx () {
}

pkg_postinst_ontarget:${PN}:mx8m-generic-bsp:tdx () {
    mv /etc/asound-canopus.conf /etc/asound.conf
    mv /var/lib/alsa/asound-canopus.state /var/lib/alsa/asound.state
    rm -f /etc/asound-*.conf
    rm -f /var/lib/alsa/asound-*.state
}