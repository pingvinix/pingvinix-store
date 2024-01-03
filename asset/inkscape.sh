#!/bin/bash

magick convert -size 700x400 xc:transparent /tmp/description.png
magick /tmp/description.png \
       -pointsize 16 -annotate +65+40 'Версия: 1.3' \
       -pointsize 16 -annotate +65+80 'Размер загрузки: 80,1 Мб' \
       -pointsize 16 -annotate +65+120 'Описание: Бесплатный редактор векторной графики с
       открытым исходным кодом. Он предлагает богатый набор функций
       и широко используется как для художественных, так и для технических
       иллюстраций, таких как мультфильмы, клипарты, логотипы, типографика,
       построение диаграмм и блок-схем. Он использует векторную графику
       для обеспечения четкой печати и рендеринга с неограниченным
       разрешением и не привязан к фиксированному количеству пикселей,
       как растровая графика. Inkscape использует стандартизированный
       формат файла SVG в качестве основного формата, который поддерживается
       многими другими приложениями, включая веб-браузеры. Inkscape
       поддерживает множество расширенных функций SVG (маркеры, клоны,
       альфа-наложение и т.д.), и при разработке упрощенного интерфейса
       уделяется большое внимание.' \
       /tmp/description.png \


killall xlunch

if [ -f /run/initramfs/memory/data/linux/modules/inkscape* ]
then 
    if [ -f /run/initramfs/memory/data/linux/modules/inkscape_1.3.sb ]
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
       --input /tmp/store/asset/inkscape.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/inkscape_delete.sh" \
       --button "/opt/appstore/img/img_open.png;;225,300;/opt/inkscape/AppRun" \
       --button "/tmp/store/asset/image/inkscape_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "1" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/inkscape.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_delete.png;;25,300;/tmp/store/asset/inkscape_delete.sh" \
       --button "/opt/appstore/img/img_update.png;;225,300;inkscape_update.sh" \
       --button "/tmp/store/asset/image/inkscape_scr.png;;1,400;null" \
)
fi

if [ "$STAT" = "0" ]
then
(
xlunch --window --title "PingviniX Store"  \
       --input /tmp/store/asset/inkscape.dsv \
       --noprompt --textafter --iconsize 96 --textpadding 30 \
       --border 50 \
       --scrollbarcolor 00000000 --scrollindicatorcolor 00000000 \
       --backgroundcolor ffffffff --textcolor 000000ff --font DejaVuSans/36 \
       --button "/opt/appstore/img/img_back.png;;1,1;/opt/appstore/appstore_nocache" \
       --button "/tmp/description.png;;425,0;null" \
       --button "/opt/appstore/img/img_install.png;;60,300;/tmp/store/asset/inkscape_install.sh" \
       --button "/tmp/store/asset/image/inkscape_scr.png;;1,400;null" \
)
fi
