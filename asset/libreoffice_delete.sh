#!/bin/bash

sudo rm /run/initramfs/memory/data/linux/modules/libreoffice* | zenity --progress --title='Ждите' --pulsate --auto-close --auto-kill --text="Идет удаление"
killall xlunch
/tmp/store/asset/libreoffice.sh
