#! /usr/bin/bash


port=$RANDOM
while [ $port -lt 20000 ]
do
	port=$RANDOM
done
ttyd -p $port -o -O zsh&
sleep .5
echo "tab-clone -b" >> "$QUTE_FIFO"
echo "open http://localhost:$port" >> "$QUTE_FIFO"
sleep .5
echo "zoom 200" >> "$QUTE_FIFO"

