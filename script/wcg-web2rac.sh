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
    s~^([^_]*)_[^\t]*\t([^\t]*)\t([^\t]*\t){3}[^\t/]* / ([0-9]+.[0-9]+) *\t([0-9]+\.[0-9]+) / ([0-9]+\.[0-9]+)$~\1 \2 \4 \5 \6~
    T e
    p
    :e
  " |
  awk -vCORES=$CORES -F" " '
    {
      sumclaimed[$2][$1] += $4 / $3
      nclaimed[$2][$1]++

      if ($5 > 0) {
        sumgranted[$2][$1] += $5 / $3
        ngranted[$2][$1]++
      }
    }
    END {
      for (j in sumclaimed) {
        print "* **" j "** (/" CORES "-core)"
        for (i in sumclaimed[j]) {
          granted = ""
          if (ngranted[j][i] > 0) {
            granted = sprintf(\
              ", %8.2f (#% 4d) granted",
              sumgranted[j][i] / ngranted[j][i] * 24 * CORES,
              ngranted[j][i])
          }

          printf(\
            "* %-7s%8.2f (#% 4d) claimed%s\n",
            i ":",
            sumclaimed[j][i] / nclaimed[j][i] * 24 * CORES,
            nclaimed[j][i],
            granted)
        }
      }
    }
  '
}

main "$@"
