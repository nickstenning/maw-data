load 'psprint'

f1 = '20110514-a3b93c5-run.dat'
f2 = '20110514-a3b93c5-run-wheelavg.dat'

set xrange [0:180]
set yrange [-1.0:2.5]
set y2range [-0.02:0.1] 
                 
set ytics nomirror
set y2tics border -0.02,0.01,0.02 

set xlabel 'sim time / s'
set ylabel 'distance / m'
set y2label '<{/Symbol t}_{/Symbol y}> / N m'

set output '20110514-a3b93c5-traj.eps' 

plot f1 u 1:9 every 100 t 'X' w l, \
     f1 u 1:10 every 100 t 'Y' w l, \
     f2 u 1:2 every 100 w l axes x1y2 t '<{/Symbol t}_{/Symbol y}>'

