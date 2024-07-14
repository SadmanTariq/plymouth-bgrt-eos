#!/bin/bash
if [ `id -u` -ne 0 ]; then
	echo Please run this script as root or using sudo!
	exit
fi

cp -R ./bgrt-eos/ /usr/share/plymouth/themes/

# This is for replacing the default initramfs rebuild script with dracut-rebuild
# which is used by default in EndeavourOS. Remove this if you are using mkinitcpio.
cp ./eos_plymouth.hook /usr/share/libalpm/hooks/
sed -i "s/mkinitcpio -P/dracut-rebuild/g" /usr/lib/plymouth/plymouth-update-initrd
# ----------------------------

plymouth-set-default-theme -R bgrt-eos

echo "Installed bgrt-eos theme."
