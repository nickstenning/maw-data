#!/bin/bash

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'X / m'
set ylabel 'Y / m'

set nokey        

set xtics -100,50,50
set ytics -100,50,50

f = '20110509-c5eddca-run.dat'

set size ratio -1

plot f u 9:10 w l lw 2
ENDPLOT
) > 20110509-c5eddca-trajectory.eps

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'sim time / t'
set ylabel 'angle / rad'                    

f = '20110509-c5eddca-run.dat'

set size ratio -1

plot f u 1:4 w l t '{/Symbol q}', f u 1:3 w l t '{/Symbol c}'
ENDPLOT
) > 20110509-c5eddca-pitchroll.eps         

