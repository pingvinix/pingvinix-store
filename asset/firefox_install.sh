#!/bin/bash


wget -O /tmp/firefox-esr_115.5.sb --no-check-certificate 'https://docs.google.com/uc?export=download&id=1TJH9hP9oUT0hhrzr9k8jfGxuQ-kqd0VL' 2>&1 | sed -u 's/.*\ \([0-9]\+%\)\ \+\([0-9.]\+\ [KMB\/s]\+\)$/\1\n# Downloading \2/' | sed -u 's/.* \([0-9]\+%\)\ \+\([0-9.]\+.\) \(.*\)/\1\n# Скорость \2\/s, осталось \3/' | zenity --progress --width 300 --percentage=0 --title="Загрузка файла" --auto-close
