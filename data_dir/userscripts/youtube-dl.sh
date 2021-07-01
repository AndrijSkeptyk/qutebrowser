#!/usr/bin/env bash
cd ~/Загрузки
youtube-dl -o '%(title)s.%(ext)s' "$QUTE_URL" && notify-send -t 5000 "видео ${QUTE_TITLE} загружено" && exit
notify-send -t 5000 "Ошибка загрузки $QUTE_TITLE"

