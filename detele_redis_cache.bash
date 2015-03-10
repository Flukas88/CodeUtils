#!/bin/bash
# delete keys from DBN cache on port PORT starting from CUR till the end in STEP steps on host HOST

CUR=0
DBN=2
STEP=100
PORT=6380
HOST="localhost"

while :
do
    /export/local/redis/bin/redis-cli -h "$HOST" -p "$PORT" -n "$DBN" scan "$CUR" COUNT "$STEP" > keybatch.txt
    CUR=$(head -1 keybatch.txt)
    echo "CUR at $CUR"
    sed 's/^/del /' keybatch.txt > del.txt
    /export/local/redis/bin/redis-cli -p "$PORT" -n "$DBN" < del.txt | wc  -l
    sleep 30
    if [[ $CUR -eq 0 ]]; then
        exit 0;
    fi
done
