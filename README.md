# Plymouth BGRT theme for EndeavourOS
This theme is the same as the default BGRT theme included with plymouth, 
but with the EndeavourOS logo instead of the default Arch one.

## Installation
Simply run the included `install.sh` script to install the theme.
This script will copy the theme files to the correct location,
update the plymouth rebuild script to use dracut-rebuild instead of mkinitcpio,
and install a pacman hook to automatically fix the rebuild script after plymouth updates.

If you do not want to use the hook, simply copy the `bgrt-eos/` directory to
`/usr/share/plymouth/themes/` and run `sudo plymouth-set-default-theme bgrt-eos`.

## Uninstallation
Run the included `uninstall.sh` script to remove the theme.

## Preview
![Preview](./preview.gif)

