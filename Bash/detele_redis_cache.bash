#!/bin/bash
# delete keys from DBN cache on port PORT starting from CUR till the end in STEP steps on host HOST

CUR=0
PGNAME=`basename $0`
STEP=10000
PORT=$1
DB=$2
HOST=$3
EXEC="/export/local/redis/bin/redis-cli"

if [[ $# -ne 3 ]]; then
    echo "usage: $PGNAME HOST PORT DB_NUMBER"
    exit 55
fi

while :
do
    $EXEC -p "$PORT" -h "$HOST" -n "$DB" scan "$CUR" COUNT "$STEP" > keybatch.txt
    CUR=$(head -1 keybatch.txt)
    echo "CUR at $CUR"
    sed 's/^/del /' keybatch.txt > del.txt
    $EXEC -p "$PORT" -h "$HOST" -n "$DBN" < del.txt | wc  -l
    sleep 1
    if [[ $CUR -eq 0 ]]; then
        exit 0;
    fi
done
