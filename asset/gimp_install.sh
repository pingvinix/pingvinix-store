#!/bin/bash

wget -O /tmp/gimp_2.10.36.sb --no-check-certificate 'https://docs.google.com/uc?export=download&id=147qArHyCcFSuGB7Z94WWv6jdLiH_jC2N' 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Скорость \2\/s, осталось \3/' | zenity --progress --width 300 --percentage=0 --title="Загрузка файла" --auto-close
sudo mv /tmp/gimp_2.10.36.sb /run/initramfs/memory/data/linux/modules/gimp_2.10.36.sb
/tmp/store/asset/gimp.sh
