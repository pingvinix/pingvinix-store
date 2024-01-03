#!/bin/bash

wget -O /tmp/inkscape_1.3.sb --no-check-certificate 'https://docs.google.com/uc?export=download&id=1gBjMgsQ5gursp4ecUKPzuiVh1LbuwNev' 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Скорость \2\/s, осталось \3/' | zenity --progress --width 300 --percentage=0 --title="Загрузка файла" --auto-close
sudo mv /tmp/inkscape_1.3.sb /run/initramfs/memory/data/linux/modules/inkscape_1.3.sb
/tmp/store/asset/inkscape.sh
