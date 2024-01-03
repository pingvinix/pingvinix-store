#!/bin/bash
rm -rf /tmp/cookies.txt
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1OD9t5bDuSLJ2gHll4Y7mB7j3d8HlwIIF' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1OD9t5bDuSLJ2gHll4Y7mB7j3d8HlwIIF" -O /tmp/supertux_0.6.3.sb | zenity --progress --width 300 --percentage=0 --title="Загрузка файла" --auto-close
rm -rf /tmp/cookies.txt
sudo mv /tmp/supertux_0.6.3.sb /run/initramfs/memory/data/linux/modules/supertux_0.6.3.sb
/tmp/store/asset/supertux.sh
