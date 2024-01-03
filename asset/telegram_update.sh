#!/bin/bash

sudo rm /run/initramfs/memory/data/linux/modules/telegram* | zenity --progress --title='Ждите' --pulsate --auto-close --auto-kill --text="Идет обновление"
killall xlunch
/tmp/store/asset/telegram_install.sh
