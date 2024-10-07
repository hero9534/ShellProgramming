#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Usage: $0 <pattern> <filename>"
    exit 1
fi
PATTERN="$1"
FILENAME="$2"

grep  "$PATTERN" "$FILENAME" >/dev/null 2>&1
if [ $? -eq 0 ] ; then
    echo "[  OK  ] $FILENAME $PATTERN 패턴 찾았다."
else
    echo "[  FAIL  ] $FILENAME $PATTERN 패턴 못 찾았다."
fi