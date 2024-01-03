#!/bin/bash

magick convert -size 700x400 xc:transparent /tmp/description.png
magick /tmp/description.png \
       -pointsize 16 -annotate +65+40 'Версия: 4.12.2' \
       -pointsize 16 -annotate +65+80 'Размер загрузки: 52,3 Мб' \
       -pointsize 16 -annotate +65+120 'Описание: Быстрый. Безопасный. Мощный. Чистый обмен
мгновенными сообщениями — простой, быстрый, безопасный и
синхронизируемый на всех ваших устройствах. Одно из 10
самых загружаемых приложений в мире с более чем 500 миллионами
активных пользователей. Telegram - самое быстрое приложение 
для обмена сообщениями на рынке, соединяющее людей через
уникальную распределенную сеть центров обработки данных по всему миру.' \
       /tmp/description.png \


killall xlunch

if [ -f /run/initramfs/memory/data/linux/modules/telegram* ]
then 
    if [ -f /run/initramfs/memory/data/linux/modules/telegram_4.12.2.sb ]
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
       --input /tmp/store/asset/telegram.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/telegram_delete.sh" \
       --button "/opt/appstore/img/img_open.png;;225,300;/opt/Telegram/Telegram" \
       --button "/tmp/store/asset/image/telegram_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "1" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/telegram.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/telegram_delete.sh" \
       --button "/opt/appstore/img/img_update.png;;225,300;telegram_update.sh" \
       --button "/tmp/store/asset/image/telegram_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "0" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/telegram.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_install.png;;60,300;/tmp/store/asset/telegram_install.sh" \
       --button "/tmp/store/asset/image/telegram_scr.png;;1,400;null" \
)
fi
