#!/bin/sh
# Copy & paste the content from the World Community Grid account page
# under My Contribution -> Result Stauts -> Device Name: ..., Status: Valid

main() {
  local CORES="${1-16}"
  [ $# -gt 0 ] && shift 1

  cat "$@" |
  sed -r "
    s~^[^\t]*\t[^\t]*$~&~
    T e
    N
    s/\n(([^\t]*\t){5}[^\t]*)$/\1/
    :e
    " |
  grep "\<Valid\>" |
  sort -u |
  sed -rn "
    s~^([^_]*)_([^\t]*\t){5}[^\t/]* / ([0-9]+.[0-9]+)\t[^\t/]* / ([0-9]+\.[0-9]+)$~\1 \3 \4~
    T e
    p
    :e
  " |
  awk -vCORES=$CORES -F" " '
    {
      sum[$1] += $3 / $2
      count[$1]++
    }
    END {
      for (i in sum) {
        print "* " i ": " sum[i] / count[i] * 24 * CORES " (# " count[i] ")"
      }
    }
  '
}

main "$@"
