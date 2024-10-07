#!/bin/bash

IP=192.168.10.1
UNAME=user01
UPASS=user01

ftp -n "$IP" << EOF
user $UANME $UPASS
cd test
lcd /test
bin
hash
prompt
mput testfile.txt
quit
EOF
