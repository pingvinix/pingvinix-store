#!/bin/bash

magick convert -size 700x400 xc:transparent /tmp/description.png
magick /tmp/description.png \
       -pointsize 16 -annotate +65+40 'Версия: 2.10.36' \
       -pointsize 16 -annotate +65+80 'Размер загрузки: 87,9 Мб' \
       -pointsize 16 -annotate +65+120 'GIMP - это свободно распространяемая программа
       для таких задач, как ретушь фотографий, композиция изображений
       и создание авторских изображений. Она обладает множеством
       возможностей. Его можно использовать как простую программу
       рисования, программу ретуши фотографий экспертного качества,
       систему пакетной обработки онлайн, средство для массового
       производства изображений, конвертер форматов изображений и т.д.
       GIMP является расширяемым. Он предназначен для дополнения плагинами
       и расширениями, позволяющими выполнять практически все. Расширенный
       интерфейс сценариев позволяет легко создавать сценарии для всего,
       от простейших задач до самых сложных процедур манипулирования
       изображениями. GIMP доступен для Linux, Microsoft Windows и OS X.' \
       /tmp/description.png \


killall xlunch

if [ -f /run/initramfs/memory/data/linux/modules/gimp* ]
then 
    if [ -f /run/initramfs/memory/data/linux/modules/gimp_2.10.36.sb ]
    then
    STAT=2
    else
    STAT=1
    fi
else
STAT=0 
fi

if [ "$STAT" = "2" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/gimp.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/gimp_delete.sh" \
       --button "/opt/appstore/img/img_open.png;;225,300;/opt/gimp/AppRun" \
       --button "/tmp/store/asset/image/gimp_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "1" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/gimp.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/gimp_delete.sh" \
       --button "/opt/appstore/img/img_update.png;;225,300;gimp_update.sh" \
       --button "/tmp/store/asset/image/gimp_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "0" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/gimp.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_install.png;;60,300;/tmp/store/asset/gimp_install.sh" \
       --button "/tmp/store/asset/image/gimp_scr.png;;1,400;null" \
)
fi
