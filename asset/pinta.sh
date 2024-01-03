#!/bin/bash

magick convert -size 700x400 xc:transparent /tmp/description.png
magick /tmp/description.png \
       -pointsize 16 -annotate +65+40 'Версия: 2.1.1' \
       -pointsize 16 -annotate +65+80 'Размер загрузки: 25,0 Мб' \
       -pointsize 16 -annotate +65+120 'Pinta - это приложение для редактирования
       изображений, рисования и раскраски с простым, но мощным интерфейсом. Pinta
       обладает широким спектром инструментов рисования, включая: от руки,
       прямоугольники, круги и линии. Он также имеет более 35 эффектов для
       применения к вашим изображениям, а также возможность создавать
       неограниченное количество слоев, чтобы помочь организовать ваше творчество.' \
       /tmp/description.png \


killall xlunch

if [ -f /run/initramfs/memory/data/linux/modules/pinta* ]
then 
    if [ -f /run/initramfs/memory/data/linux/modules/pinta_2.1.1.sb ]
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
       --input /tmp/store/asset/pinta.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/pinta_delete.sh" \
       --button "/opt/appstore/img/img_open.png;;225,300;/opt/pinta/AppRun" \
       --button "/tmp/store/asset/image/pinta_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "1" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/pinta.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/pinta_delete.sh" \
       --button "/opt/appstore/img/img_update.png;;225,300;pinta_update.sh" \
       --button "/tmp/store/asset/image/pinta_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "0" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/pinta.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_install.png;;60,300;/tmp/store/asset/pinta_install.sh" \
       --button "/tmp/store/asset/image/pinta_scr.png;;1,400;null" \
)
fi
