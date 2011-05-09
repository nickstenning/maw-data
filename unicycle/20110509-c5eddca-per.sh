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
            