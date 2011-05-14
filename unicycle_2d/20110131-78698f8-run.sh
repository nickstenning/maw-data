#!/bin/bash

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'sim time / s'
set ylabel 'energy / J'
set y2label '{/Symbol y} / rad'
set y2tics border

set xrange[0:60]

f = '20110131-78698f8-run.dat'

plot f u 1:($7 + $8) w l t 'T + V', \
     f u 1:8 w l t 'V', \
     f u 1:4 w l axes x1y2 t '{/Symbol y}' 

ENDPLOT
) > 20110131-78698f8-run-energy-position.eps 
