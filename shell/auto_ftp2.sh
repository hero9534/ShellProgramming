#!/bin/bash

SERVERLIST=/root/shell/server.txt

for i in $(cat $SERVERLIST)
do

    ftp -n "$i" 21 << EOF
    user root centos
    cd /tmp
    lcd /test
    bin
    hash
    prompt
    mput linux211.txt
    quit
EOF

done