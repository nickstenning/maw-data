#!/bin/bash

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'X / m'
set ylabel 'Y / m'

set nokey

set xtics -8,4,8
set ytics -12,4,8

f = '20110509-6380e4c-run.dat'

set size ratio -1

plot f u 9:10 w l lw 2
ENDPLOT
) > 20110509-6380e4c-trajectory.eps

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'sim time / t'
set ylabel 'angle / rad'                    

set xrange [10:100]

f = '20110509-6380e4c-run.dat'

set size ratio -1

plot f u 1:4 w l t '{/Symbol q}', f u 1:3 w l t '{/Symbol c}'
ENDPLOT
) > 20110509-6380e4c-pitchroll.eps         

