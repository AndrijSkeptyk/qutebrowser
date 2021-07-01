#! /usr/bin/bash
port=$RANDOM
while [ $port -lt 20000 ]
do
	port=$RANDOM
done
myterm=$(echo -e "zsh\nlf\ndvtm\nbash\nipython\njulia"| dmenu -b)
ttyd -p $port -o -O $myterm&
sleep .5
echo "open -t http://localhost:$port" >> "$QUTE_FIFO"

