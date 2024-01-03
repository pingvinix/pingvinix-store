#!/bin/bash

wget -O /tmp/telegram_4.12.2.sb --no-check-certificate 'https://docs.google.com/uc?export=download&id=1IgpM10KtRmB0y2cwBz8GpPo_bTvU-oXR' 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Скорость \2\/s, осталось \3/' | zenity --progress --width 300 --percentage=0 --title="Загрузка файла" --auto-close
sudo mv /tmp/telegram_4.12.2.sb /run/initramfs/memory/data/linux/modules/anydesk_6.3.0.sb
/tmp/store/asset/telegram.sh
