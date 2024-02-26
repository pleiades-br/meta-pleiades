require conf/distro/poky.conf

DISTRO = "imx-nxp"
DISTRO_NAME = "NXP i.MX Release Distro"
DISTRO_VERSION = "5.15-kirkstone"

MAINTAINER = "NXP <lauren.post@nxp.com>"

REMOVE_VULKAN_FEATURE = "vulkan"
REMOVE_VULKAN_FEATURE:mx8-nxp-bsp = ""
POKY_DEFAULT_DISTRO_FEATURES:remove      = "wayland ${REMOVE_VULKAN_FEATURE}"
POKY_DEFAULT_DISTRO_FEATURES:append:mx8-nxp-bsp  = " jailhouse"

INHERIT:remove = "uninative"