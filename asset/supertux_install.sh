#!/bin/bash
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1OD9t5bDuSLJ2gHll4Y7mB7j3d8HlwIIF' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1OD9t5bDuSLJ2gHll4Y7mB7j3d8HlwIIF" -O /tmp/supertux_0.6.3.sb && rm -rf /tmp/cookies.txt

wget -O /tmp/supertux_0.6.3.sb --no-check-certificate 'https://docs.google.com/uc?export=download&id=1OD9t5bDuSLJ2gHll4Y7mB7j3d8HlwIIF' 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Скорость \2\/s, осталось \3/' | zenity --progress --width 300 --percentage=0 --title="Загрузка файла" --auto-close
sudo mv /tmp/supertux_0.6.3.sb /run/initramfs/memory/data/linux/modules/supertux_0.6.3.sb
/tmp/store/asset/supertux.sh
