# put it into ~/.config
# it requires libusb, libusb-devel, tcl, usb-modeswitch, usb-modeswitch-data
# run # udevadm control --reload-rules
sudo usb_modeswitch -v 12d1 -p 1f01 -J

