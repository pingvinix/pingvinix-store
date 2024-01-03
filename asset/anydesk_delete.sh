#!/bin/bash

sudo rm /run/initramfs/memory/data/linux/modules/anydesk* | zenity --progress --title='Ждите' --pulsate --auto-close --auto-kill --text="Идет удаление"
killall xlunch
/tmp/store/asset/anydesk.sh
