#!/usr/bin/env bash
#
cd ~/Загрузки
monolith -o "$(echo "$QUTE_TITLE"|tr ";&()|<>*?[]~+@!' /\"\\" "_")_monolith.html" "file://$QUTE_HTML"
