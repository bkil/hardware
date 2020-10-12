#!/bin/sh

awk -F"|" -vOFS="|" '
  {
    cols = 29
    if (NR > 2) {
      w = $3
      whetstone = $4
      rac = $6
      cost = $12 + $13 + $14 + $15
      tdp = $18
      core = $19
      thread = $20
      cache = $21

      if (rac == "") {
        effective_core = core
        if (thread != "")
          effective_core = (core + thread) / 2
        rac = 200 * effective_core * whetstone
      }
      if (!(rac > 0))
        next

      if (w == "") {
        base = 30
        if (tdp < 40)
          base = 10
        w = tdp / 0.85 + base
      }

      racw = rac / w

      mp = core
      if (thread != "")
        mp = thread
      if (!(mp > 0))
        next
      cache_t = cache / mp

      d_5y = 5 * w + cost / 2
      d_5yns = 5 * w + cost
      racd_5y = rac / d_5y
      racd_5yns = rac / d_5yns
      d_gflops_5y = d_5y / (rac / 200)

      $(cols + 1) = cache_t
      $(cols + 2) = racw
      $(cols + 3) = racd_5y
      $(cols + 4) = racd_5yns
      $(cols + 5) = d_5y
      $(cols + 6) = d_5yns
      $(cols + 7) = d_gflops_5y
    } else if (NR == 1) {
      $(cols + 1) = "cache/t"
      $(cols + 2) = "RAC/W"
      $(cols + 3) = "RAC/$ 5y"
      $(cols + 4) = "RAC/$ 5y no-sell"
      $(cols + 5) = "$/5y"
      $(cols + 6) = "$/5y no-sell"
      $(cols + 7) = "$/GFLOPS 5y"
    } else if (NR == 2) {
      $(cols + 1) = "-"
      $(cols + 2) = "-"
      $(cols + 3) = "-"
      $(cols + 4) = "-"
      $(cols + 5) = "-"
      $(cols + 6) = "-"
      $(cols + 7) = "-"
    }
    print
  }
' boinc-efficiency.csv
