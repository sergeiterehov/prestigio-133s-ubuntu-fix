#!/bin/sh

# WiFi fix
modprobe -r 8723bu
modprobe 8723bu

# TouchPad fix
modprobe -r i2c_hid
modprobe i2c_hid