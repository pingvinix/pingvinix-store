#!/bin/bash

magick convert -size 700x400 xc:transparent /tmp/description.png
magick /tmp/description.png \
       -pointsize 16 -annotate +65+40 'Версия: 7.5.9.2' \
       -pointsize 16 -annotate +65+80 'Размер загрузки: 243 Мб' \
       -pointsize 16 -annotate +65+120 'Описание: LibreOffice - это мощный офисный пакет. Его
понятный интерфейс и многофункциональные инструменты помогут
вам раскрыть свой творческий потенциал и повысить производительность.
LibreOffice включает в себя несколько приложений, которые делают
его самым мощным бесплатным офисным пакетом с открытым исходным
кодом на рынке: Writer (обработка текстов), Calc (электронные таблицы),
Impress (презентации), Draw (векторная графика и блок-схемы),
Base (базы данных) и Math (редактирование формул).
LibreOffice поддерживает открытие и сохранение в самых разных форматах,
поэтому вы можете легко обмениваться документами с пользователями
других популярных офисных пакетов, не беспокоясь о совместимости.' \
       /tmp/description.png \


killall xlunch

if [ -f /run/initramfs/memory/data/linux/modules/libreoffice* ]
then 
    if [ -f /run/initramfs/memory/data/linux/modules/libreoffice_7.5.9.2.sb ]
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
       --input /tmp/store/asset/libreoffice.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/libreoffice_delete.sh" \
       --button "/opt/appstore/img/img_open.png;;225,300;/opt/libreoffice7.5/program/soffice --base" \
       --button "/tmp/store/asset/image/libreoffice_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "1" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/libreoffice.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/libreoffice_delete.sh" \
       --button "/opt/appstore/img/img_update.png;;225,300;/tmp/store/asset/libreoffice_update.sh" \
       --button "/tmp/store/asset/image/libreoffice_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "0" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/libreoffice.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_install.png;;60,300;/tmp/store/asset/libreoffice_install.sh" \
       --button "/tmp/store/asset/image/libreoffice_scr.png;;1,400;null" \
)
fi
