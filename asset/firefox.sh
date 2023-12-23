#!/bin/bash

magick convert -size 700x400 xc:transparent /tmp/description.png
magick /tmp/description.png \
       -pointsize 16 -annotate +65+40 'Версия: 115.6' \
       -pointsize 16 -annotate +65+80 'Размер загрузки: 70,8 Мб' \
       -pointsize 16 -annotate +65+120 'Описание: Быстрый, конфиденциальный и безопасный веб-браузер
Когда дело касается вашей жизни в Интернете, у вас есть выбор:
принять заводские настройки или поставить конфиденциальность на
первое место. Выбирая Firefox в качестве браузера по умолчанию,
вы решаете защитить свои данные, одновременно поддерживая
независимую технологическую компанию. Firefox также является
единственным крупным браузером, поддерживаемым некоммерческой
организацией, стремящейся предоставить вам больше открытости,
прозрачности и контроля над вашей жизнью в Интернете.
Присоединяйтесь к сотням миллионов людей, которые решили
защитить то, что важно, выбрав Firefox — веб-браузер,
созданный, чтобы быть быстрым, простым в использовании, 
настраиваемым и конфиденциальным.' \
       /tmp/description.png \


killall xlunch

if [ -f /run/initramfs/memory/data/linux/modules/firefox-esr* ]
then 
    if [ -f /run/initramfs/memory/data/linux/modules/firefox-esr_115.5.sb ]
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
       --input /tmp/store/asset/firefox.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "./img/img_back.png;;1,1;./appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "./img/img_delete.png;;25,300;./firefox_del.sh" \
       --button "./img/img_open.png;;225,300;exec firefox-esr" \
       --button "/tmp/store/asset/image/firefox_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "1" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/firefox.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "./img/img_back.png;;1,1;./appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "./img/img_delete.png;;25,300;./firefox_del.sh" \
       --button "./img/img_update.png;;225,300;null" \
       --button "/tmp/store/asset/image/firefox_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "0" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/firefox.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "./img/img_back.png;;1,1;./appstore_nocache" \
       --button "./tmp/description.png;;425,0;null" \
       --button "./img/img_install.png;;60,300;./firefox_del.sh" \
       --button "/tmp/store/asset/image/firefox_scr.png;;1,400;null" \
)
fi
