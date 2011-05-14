#!/bin/bash

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'sim time / s'
set ylabel 'energy / J'
set y2label '{/Symbol y} / rad'
set ytics nomirror
set y2tics border

set xrange [0:50]
set y2range [-20:10]

f = '20110217-8160e7f-run.dat'

plot f u 1:($7 + $8) w l t 'T + V', \
     f u 1:8 w l t 'V', \
     f u 1:4 w l axes x1y2 t '{/Symbol y}' 

ENDPLOT
) > 20110217-8160e7f-run-energy-position.eps

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'sim time / s'
set ylabel '{/Symbol c} / rad'
set y2label '{/Symbol y} / rad'
set ytics nomirror
set y2tics border

set xrange [0:50]

f = '20110217-8160e7f-run.dat'

plot f u 1:2 w l t '{/Symbol c}', \
     f u 1:4 w l axes x1y2 t '{/Symbol y}' 

ENDPLOT
) > 20110217-8160e7f-run-position.eps