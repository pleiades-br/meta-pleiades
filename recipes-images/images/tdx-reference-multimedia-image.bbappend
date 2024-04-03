# Change the installation of some packages for canopus
IMAGE_INSTALL:remove = " connman"
IMAGE_INSTALL:remove = " connman-client"
IMAGE_INSTALL:remove = " connman-gnome"
IMAGE_INSTALL:remove = " connman-plugin-wifi"
IMAGE_INSTALL:remove = " connman-plugin-ethernet"
IMAGE_INSTALL:remove = " connman-plugin-loopback"
# Add NetworkManager
IMAGE_INSTALL:remove = " networkmanager"
IMAGE_INSTALL:append = " modemmanager"
# Add i2c-tools
IMAGE_INSTALL:append = " i2c-tools"
IMAGE_INSTALL:append = " ruart"

IMAGE_INSTALL:remove = " hostapd-example"