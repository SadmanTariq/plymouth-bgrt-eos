#!/bin/bash
if [ `id -u` -ne 0 ]; then
	echo Please run this script as root or using sudo!
	exit
fi

rm -rf /usr/share/plymouth/themes/bgrt-eos/
rm -f /usr/share/libalpm/hooks/eos_plymouth.hook

echo "Uninstalled bgrt-eos theme."
