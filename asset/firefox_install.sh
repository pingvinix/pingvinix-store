#!/bin/bash


wget https://download-installer.cdn.mozilla.net/pub/firefox/releases/121.0/linux-x86_64/ru/firefox-121.0.tar.bz2 --trust-server-names=on --restrict-file-names=nocontrol 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Скорость \2\/s, осталось \3/' | zenity --progress --percentage=0 --title="Загрузка файла" --auto-close
