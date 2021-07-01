#! /usr/bin/bash
cd ~/Загрузки
menulist="youtube-dl\nyou-get\nmonolith\nmonolith_cache"
case "$(echo -e "$menulist"|dmenu -b)" in
	"youtube-dl")
		youtube-dl -o '%(title)s.%(ext)s' "$QUTE_URL" && echo ":message-info \"видео ${QUTE_TITLE} загружено\"">>"$QUTE_FIFO" && exit
		echo ":message-error \"ошибка загрузки ${QUTE_TITLE}\"">>"$QUTE_FIFO"
		;;
	"you-get")
		you-get  "$QUTE_URL" && echo ":message-info \"видео ${QUTE_TITLE} загружено\"">>"$QUTE_FIFO" && exit
		echo ":message-error \"ошибка загрузки ${QUTE_TITLE}\"">>"$QUTE_FIFO"
		;;
	"monolith")
		monolith -o "$(echo "$QUTE_TITLE"|tr ";&()|<>*?[]~+@!' /\"\\" "_")_monolith.html" "$QUTE_URL"
		;;
	"monolith_cache")
		monolith -o "$(echo "$QUTE_TITLE"|tr ";&()|<>*?[]~+@!' /\"\\" "_")_monolith.html" "file://$QUTE_HTML"
		;;
	*)
		echo ":message-error 'ошибка загрузки'">>"$QUTE_FIFO"
		;;
esac

