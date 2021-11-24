#!/bin/sh

while true; do
  pgrep --full ../../projects/www.worldcommunitygrid.org/ |
  while read PID do
    taskset --all-tasks --pid 0x55555555 $PID
  done

  pgrep --full ../../projects/boinc.bakerlab.org_rosetta/ |
  while read PID; do
    taskset --all-tasks --pid 0xAAAAAAAA $PID
  done

  sleep 60
done
