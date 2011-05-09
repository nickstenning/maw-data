#!/bin/bash

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'sim time / s'
set ylabel 'energy / J'

f = '20110509-openloop.dat'

set yrange [0:225]

plot f u 1:($9 + $10) w l ls 1 lw 2 t 'T + V', \
     f u 1:9 w l ls 2 lw 2  t 'T', \
     f u 1:10 w l ls 3 lw 2 t 'V'
ENDPLOT
) > 20110509-openloop.eps

(
gnuplot <<'ENDPLOT'

load 'psprint'

set xlabel 'sim time / s'
set ylabel '{/Symbol c} / rad'
set y2label 'd{/Symbol y}/dt / rad s^{-1}'
set y2tics border
set ytics nomirror

set yrange [-1.8:0.4]
set y2range [-2:6]

f = '20110509-openloop.dat'

plot f u 1:3 w l ls 1 lw 2 t '{/Symbol c}', \
     f u 1:8 w l axes x1y2 ls 2 lw 2 t 'd{/Symbol y}/dt'
ENDPLOT
) > 20110509-openloop-2.eps 
