#!/bin/bash
INPUT_FILE=$1
START_LINE=`head -n1 $INPUT_FILE`
PATTERN="^FLTNBE-[0-9]{4}+:\s+[A-Za-z0-9]+"
if [[ ! "$START_LINE" =~ $PATTERN ]]; then
  echo "Bad commit message, see example: FLTNBE-1234: commit message"
  exit 1
fi
