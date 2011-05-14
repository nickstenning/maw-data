#!/bin/bash

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'sim time / t'
set ylabel '{/Symbol c} / rad'

set nokey

set xrange [10:43] 

f = '20110509-c5eddca-per.dat'

plot f u 1:3 w l lw 2
ENDPLOT
) > 20110509-c5eddca-per.eps

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'sim time / t'
set ylabel 'd{/Symbol y}/dt / rad s^{-1}'

set nokey

set xrange [32:36] 

f = '20110509-c5eddca-per.dat'

plot f u 1:8 w l lw 2

ENDPLOT
) > 20110509-c5eddca-per-resp.eps
            