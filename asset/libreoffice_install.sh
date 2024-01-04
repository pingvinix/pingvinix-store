#!/bin/bash

rm -rf /tmp/cookies.txt
wget --load-cookies /tmp/cookies.txt "https://docs.google.com/uc?export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=1kaxt0llnXQJP669ZgsIixQwo-sB_J_92' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=1kaxt0llnXQJP669ZgsIixQwo-sB_J_92" -O /tmp/libreoffice_7.5.9.2.sb 2>&1 | sed -u 's/.* \([0-9]\+%\)\ \(.*\)/\1\n# Идет загрузка \1/' | zenity --progress --width 300 --percentage=0 --title="Ждите" --auto-close
rm -rf /tmp/cookies.txt
sudo mv /tmp/libreoffice_7.5.9.2.sb /run/initramfs/memory/data/linux/modules/libreoffice_7.5.9.2.sb
/tmp/store/asset/supertux.sh
