# Change the installation of some packages for canopus
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:remove = " connman"
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:remove = " connman-client"
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:remove = " connman-gnome"
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:remove = " connman-plugin-wifi"
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:remove = " connman-plugin-ethernet"
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:remove = " connman-plugin-loopback"
# Add NetworkManager
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:remove = " networkmanager"
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:append = " modemmanager"
# Add i2c-tools and uart tools
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:append = " i2c-tools"
IMAGE_INSTALL:plds-verdin-imx8mp-canopus:append = " ruart"

IMAGE_INSTALL:plds-verdin-imx8mp-canopus:remove = " hostapd-example"