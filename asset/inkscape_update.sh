#!/bin/bash

sudo rm /run/initramfs/memory/data/linux/modules/inkscape* | zenity --progress --title='Ждите' --pulsate --auto-close --auto-kill --text="Идет обновление"
killall xlunch
/tmp/store/asset/inkscape_install.sh
