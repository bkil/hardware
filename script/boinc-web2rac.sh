#!/bin/sh
# Copy & paste the content of the finished tasks table
# from the online account page ("All tasks for computer xxxx").

main() {
  local CORES="${1-16}"
  [ $# -gt 0 ] && shift 1

  sort -u "$@" |
  sed -rn "
    s~^([^\t]*\t){5}([0-9]+),([0-9]+\.[0-9]+)\t[^\t]*\t([0-9]+\.[0-9]+)\t[^\t]*$~\2\3 \4~
    T e
    p
    :e
  " |
  awk -vCORES=$CORES -F" " '
    {
      speed += $2 / $1
      count++
    }
    END {
      print CORES * speed / count * 3600 * 24 " task count: " count
    }
  '
}

main "$@"
