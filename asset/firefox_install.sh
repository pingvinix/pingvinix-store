#!/bin/bash


wget -O /tmp/firefox-esr_115.6.sb --no-check-certificate 'https://docs.google.com/uc?export=download&id=1ZdVXQlfGJJSup39dCAOIJuRLfNXNaisW' 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Скорость \2\/s, осталось \3/' | zenity --progress --width 300 --percentage=0 --title="Ждите" --auto-close
sudo mv /tmp/firefox-esr_115.6.sb /run/initramfs/memory/data/linux/modules/firefox-esr_115.6.sb
/tmp/store/asset/firefox.sh
