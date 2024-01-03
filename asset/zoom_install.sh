#!/bin/bash

wget -O /tmp/zoom_5.16.10.sb --no-check-certificate 'https://docs.google.com/uc?export=download&id=1TJlgVQEGmwJeNzTpeSlSoH27IaZ6vcph' 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Скорость \2\/s, осталось \3/' | zenity --progress --width 300 --percentage=0 --title="Загрузка файла" --auto-close
sudo mv /tmp/zoom_5.16.10.sb /run/initramfs/memory/data/linux/modules/zoom_5.16.10.sb
/tmp/store/asset/zoom.sh
