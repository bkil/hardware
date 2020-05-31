#!/bin/sh -x
cd /tmp
sudo --set-home --user boinc sh -c '
while true;do
pgrep --euid boinc --full "^\.\./\.\./projects/" |
xargs kill -STOP;
sleep 0.5;
pgrep --euid boinc --full "^\.\./\.\./projects/" |
xargs kill -CONT;
sleep 0.5;
done
'
