#!/bin/sh

awk -F"|" -vOFS="|" '
  {
    if (NR > 2) {
      w = $4
      whetstone = $5
      rac = $6
      cost = $10 + $11 + $12 + $13
      tdp = $15
      core = $16
      thread = $17
      cache = $18

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

      $24 = cache_t
      $25 = racw
      $26 = racd_5y
      $27 = racd_5yns
      $28 = d_5y
      $29 = d_5yns
      $30 = d_gflops_5y
    } else if (NR == 1) {
      $24 = "cache/t"
      $25 = "RAC/W"
      $26 = "RAC/$ 5y"
      $27 = "RAC/$ 5y no-sell"
      $28 = "$/5y"
      $29 = "$/5y no-sell"
      $30 = "$/GFLOPS 5y"
    } else if (NR == 2) {
      $24 = "-"
      $25 = "-"
      $26 = "-"
      $27 = "-"
      $28 = "-"
      $29 = "-"
      $30 = "-"
    }
    print
  }
' boinc-efficiency.csv