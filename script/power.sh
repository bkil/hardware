#!/bin/sh
main() {
  mkdir -p ~/cache/power || exit 1
  DELAY=60
  while true; do
    CPU="`get_cpu_iowait`"
    DATE="`date +%Y-%m-%dT%H:%M`"
    FQ="`cat /sys/devices/system/cpu/cpufreq/policy[0-9]*/scaling_cur_freq|sed ":l; N; s/\n/;/; t l"`"
    TEMP="`expr $(cat /sys/devices/virtual/thermal/thermal_zone1/temp) / 1000`"
    FREERAM="`grep "^MemAvailable" /proc/meminfo|tr -s " "|cut -d " " -f 2`"
    ROSETTAS="`boinccmd --get_tasks|grep -E "^ *(project URL|active_task_state): "|grep -B1 "EXECUTING"|grep -c "://boinc.bakerlab.org/rosetta/"`"
#   FAN=`cat /sys/devices/virtual/hwmon/hwmon?/fan1_input`
    echo "$DATE;$FQ;$TEMP;$FREERAM;$ROSETTAS;$CPU"
    done
  tee -a ~/cache/power/power.`date +%Y-%m-%d`.csv
}

get_cpu_iowait() {
  top -b -n 2 -d $DELAY |
# top -b -n $DELAY -d 1 |
  grep "%Cpu(s):" |
  tail -n 1 |
  sed -r "s/^.*ni, *([0-9]+)[.,]([0-9]+) id, *([0-9]+)[.,]([0-9]+) wa,.*$/\1.\2 \3.\4/" |
  awk '{printf("%.1f;%.1f\n", $1, $2)}'
}

main "$@"
