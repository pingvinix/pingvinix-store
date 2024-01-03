#!/bin/bash

magick convert -size 700x400 xc:transparent /tmp/description.png
magick /tmp/description.png \
       -pointsize 16 -annotate +65+40 'Версия: 0.6.3' \
       -pointsize 16 -annotate +65+80 'Размер загрузки: 168 Мб' \
       -pointsize 16 -annotate +65+120 'Описание: Бегайте и прыгайте по множеству миров,
сражайтесь с врагами, прыгая на них, натыкаясь на них снизу или
бросая в них предметы, хватая бонусы и другие вещи по пути.
В дополнение к режиму истории, существует большое количество
уровней, созданных сообществом, доступных в виде дополнений
или на форумах. Каждый может добавлять такой контент, используя
встроенный редактор уровней.' \
       /tmp/description.png \


killall xlunch

if [ -f /run/initramfs/memory/data/linux/modules/supertux* ]
then 
    if [ -f /run/initramfs/memory/data/linux/modules/supertux_0.6.3.sb ]
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
       --input /tmp/store/asset/supertux.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/supertux_delete.sh" \
       --button "/opt/appstore/img/img_open.png;;225,300;/opt/supertux/AppRun" \
       --button "/tmp/store/asset/image/supertux_scr.jpg;;1,400;null" \
)
fi

if [ "$STAT" = "1" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/supertux.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/supertux_delete.sh" \
       --button "/opt/appstore/img/img_update.png;;225,300;supertux_update.sh" \
       --button "/tmp/store/asset/image/supertux_scr.jpg;;1,400;null" \
)
fi

if [ "$STAT" = "0" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/supertux.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_install.png;;60,300;/tmp/store/asset/supertux_install.sh" \
       --button "/tmp/store/asset/image/supertux_scr.jpg;;1,400;null" \
)
fi
