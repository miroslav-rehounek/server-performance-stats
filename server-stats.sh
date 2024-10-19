#!/usr/bin/env bash

TEMPFILE_CPU=$(mktemp)
TEMPFILE_MEM=$(mktemp)

echo Capturing stats...
top -b -n 2 -o +P > "$TEMPFILE_CPU"
top -b -n 2 -o +%MEM > "$TEMPFILE_MEM"

cat "$TEMPFILE_CPU" | sed '3,12p' -n; echo
cat "$TEMPFILE_MEM" | sed '7,12p' -n; echo
echo "Disk usage:"
df -h /



