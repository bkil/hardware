#!/bin/sh

poll() {
  pgrep --full "^/usr/bin/boinc " |
  xargs ps u --ppid |
  tail -n +2 |
  tr -s " " |
  cut -d " " -f 2,11 |
  sed -r "s~^(.*) (.*)$~\2 \1~" |
  sort |
  cut -d " " -f 2 |
  while read PID; do
    [ -n "$N" ] || N=0

    taskset --all-tasks --pid --cpu-list $N $PID

    N=`expr $N + 2`
    [ "$N" -eq "$VCPU" ] && N="1"
    [ "$N" -gt "$VCPU" ] && N="0"
  done
}

main() {
  VCPU="`grep -c "^processor" /proc/cpuinfo`"
  while true; do
    poll
    sleep 60
  done
}

main "$@"
