#!/usr/bin/env bash
cd ~/Загрузки
youtube-dl -o '%(title)s.%(ext)s' "$QUTE_URL"
