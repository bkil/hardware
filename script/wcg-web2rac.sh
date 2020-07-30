#!/bin/sh
# Copy & paste the content from the World Community Grid account page
# under My Contribution -> Result Stauts -> Device Name: ..., Status: Valid

main() {
  local CORES="${1-1}"
  [ $# -gt 0 ] && shift 1

  cat "$@" |
  sed -r "
    s~^[^\t]*\t[^\t]*$~&~
    T e
    N
    s/\n(([^\t]*\t){5}[^\t]*)$/\1/
    :e
    " |
  grep -E "\<(Valid|Pending Validation)\>" |
  sort -u |
  sed -rn "
    s~^([^_]*)_([^\t]*\t){5}[^\t/]* / ([0-9]+.[0-9]+) *\t([0-9]+\.[0-9]+) / ([0-9]+\.[0-9]+)$~\1 \3 \4 \5~
    T e
    p
    :e
  " |
  awk -vCORES=$CORES -F" " '
    {
      sumclaimed[$1] += $3 / $2
      nclaimed[$1]++

      if ($4 > 0) {
        sumgranted[$1] += $4 / $2
        ngranted[$1]++
      }
    }
    END {
      for (i in sumclaimed) {
        print "* " i ": " sumclaimed[i] / nclaimed[i] * 24 * CORES " (# " nclaimed[i] ") claimed, " sumgranted[i] / ngranted[i] * 24 * CORES " (# " ngranted[i] ") granted (/" CORES "-core)"
      }
    }
  '
}

main "$@"
