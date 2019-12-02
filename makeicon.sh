#!/bin/bash
# makeicon.sh е прост BASH скрипт за генериране на .desktop файлове (икони) под Линукс
# Стартирайте го в директорията в която е съдържанието на което желаете да създадете икона.
# $PWD извежда пътя до директорията в която сте отворили терминал, а $HOME - директорията на потребителя, който изпълнява скрипта
# Aвтор: Георги Пацев
# https://github.com/BaiGeorgi/bash-scripts
NM=Test_name	# Име на иконата и .desktop файла
CAT=Games	# Категория на иконата
RUN=start.sh	# Изпълним файл
ICON=icon.svg	# Графичен файл в PNG или SVG формат
echo [Desktop Entry] > $NM.desktop
echo Name=$NM >> $NM.desktop
echo Exec=$PWD/$RUN >> $NM.desktop
echo Icon=$PWD/$ICON >> $NM.desktop
echo Type=Application >> $NM.desktop
echo Categories=$CAT >> $NM.desktop
mv $NM.desktop $HOME/.local/share/applications/
echo "Запазено в" $HOME"/.local/share/applications/"$NM".desktop"
echo "За да изтриете иконата напишете:"
echo "rm" $HOME"/.local/share/applications/"$NM".desktop"
