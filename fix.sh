#!/bin/sh

# Install wifi driver and other packages
sudo add-apt-repository ppa:ryu0/main
sudo apt update
sudo apt install -y curl linux-generic rtl8723bu-dkms

# Add main fix script
curl -L https://raw.githubusercontent.com/sergeiterehov/prestigio-133s-ubuntu-fix/master/sh/fix-me.sh > /bin/fix-me
chmod a+x /bin/fix-me

# Add fix script on sleep
curl -L https://raw.githubusercontent.com/sergeiterehov/prestigio-133s-ubuntu-fix/master/sh/fix-me-sleep.sh > /lib/systemd/system-sleep/fix-me-sleep
chmod a+x /lib/systemd/system-sleep/fix-me-sleep