#!/bin/bash

magick convert -size 700x400 xc:transparent /tmp/description.png
magick /tmp/description.png \
       -pointsize 16 -annotate +65+40 'Версия: 6.3' \
       -pointsize 16 -annotate +65+80 'Размер загрузки: 5,5 Мб' \
       -pointsize 16 -annotate +65+120 'Подключитесь к компьютеру удаленно
AnyDesk обеспечивает безопасное и надежное подключение
к удаленному рабочему столу как для ИТ-специалистов, так
и для тех, кто постоянно находится в пути.' \
       /tmp/description.png \


killall xlunch

if [ -f /run/initramfs/memory/data/linux/modules/anydesk* ]
then 
    if [ -f /run/initramfs/memory/data/linux/modules/anydesk_6.3.0.sb ]
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
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/anydesk_delete.sh" \
       --button "/opt/appstore/img/img_open.png;;225,300;/usr/bin/anydesk" \
       --button "/tmp/store/asset/image/anydesk_scr.png;;1,400;null" \
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
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/anydesk_delete.sh" \
       --button "/opt/appstore/img/img_update.png;;225,300;anydesk_update.sh" \
       --button "/tmp/store/asset/image/anydesk_scr.png;;1,400;null" \
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
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_install.png;;60,300;/tmp/store/asset/anydesk_install.sh" \
       --button "/tmp/store/asset/image/anydesk_scr.png;;1,400;null" \
)
fi
