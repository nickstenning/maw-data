load 'psprint'

f = '20110514-a3b93c5-run.dat'

set xrange [120:180]
set yrange [-2.0:1.75]
                 
set ytics nomirror
set y2tics border # -0.02,0.01,0.02 

set xlabel 'sim time / s'
set ylabel 'X / m'
set y2label '{/Symbol c} / rad'

set output '20110514-a3b93c5-pitch.eps' 

plot f u 1:9 every 10 t 'X' w l, \
     f u 1:3 every 10 w l axes x1y2 t '{/Symbol c}'
                                                      
