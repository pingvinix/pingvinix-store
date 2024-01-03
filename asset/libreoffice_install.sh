#!/bin/bash


wget -O /tmp/libreoffice_7.5.9.2.sb --no-check-certificate 'https://docs.google.com/uc?export=download&id=1kaxt0llnXQJP669ZgsIixQwo-sB_J_92' 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Скорость \2\/s, осталось \3/' | zenity --progress --width 300 --percentage=0 --title="Загрузка файла" --auto-close
sudo mv /tmp/libreoffice_7.5.9.2.sb /run/initramfs/memory/data/linux/modules/libreoffice_7.5.9.2.sb
/tmp/store/asset/libreoffice.sh
