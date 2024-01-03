#!/bin/bash

magick convert -size 700x400 xc:transparent /tmp/description.png
magick /tmp/description.png \
       -pointsize 16 -annotate +65+40 'Версия: 5.16.10' \
       -pointsize 16 -annotate +65+80 'Размер загрузки: 187 Мб' \
       -pointsize 16 -annotate +65+120 'Описание: Отмеченный наградами Zoom объединяет видеоконференции,
онлайн-собрания и групповые сообщения в одно простое в использовании
приложение. Единый корпоративный интерфейс для всех вариантов использования
Разработан и оптимизирован для надежной работы
До 500 участников видеосъемки и 10 000 зрителей
Простой в использовании, покупке и масштабировании
Самые доступные и понятные цены
ПРИМЕЧАНИЕ: Эта оболочка не проверена, не связана и не поддерживается zoom.us.' \
       /tmp/description.png \


killall xlunch

if [ -f /run/initramfs/memory/data/linux/modules/zoom* ]
then 
    if [ -f /run/initramfs/memory/data/linux/modules/zoom_5.16.10.sb ]
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
       --input /tmp/store/asset/zoom.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/zoom_delete.sh" \
       --button "/opt/appstore/img/img_open.png;;225,300;/opt/zoom/AppRun" \
       --button "/tmp/store/asset/image/zoom_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "1" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/zoom.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/zoom_delete.sh" \
       --button "/opt/appstore/img/img_update.png;;225,300;zoom_update.sh" \
       --button "/tmp/store/asset/image/zoom_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "0" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/zoom.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_install.png;;60,300;/tmp/store/asset/zoom_install.sh" \
       --button "/tmp/store/asset/image/zoom_scr.png;;1,400;null" \
)
fi
