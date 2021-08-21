#!/bin/bash
# Ако имате пратка за проследяване и ви мързи да си отворите браузъра
# https://github.com/BaiGeorgi/bash-scripts/blob/master/bgpost_tracker.sh
NUM=Номер_на_пратката
URL="https://www.bgpost.bg/IPSWebTracking/IPSWeb_item_events.asp?itemid=$NUM&submit=Проследи"
while [ 1 ];do clear;date&&lynx -dump $URL | tail -n +7 | head -n -8;sleep 800;done
