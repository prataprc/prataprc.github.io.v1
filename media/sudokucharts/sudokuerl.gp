set key left top
set title "simple puzzles using sequential algorithm"
set xlabel "No. of puzzles"
set ylabel "uS"
set ytics 50000

plot "till94.dat" using 1 title "no. of puzzles" with lines
plot "till94.dat" using 2 title "Sequential" with lines, \
     "till94.dat" using 3 title "Parallel" with lines, \
     "till94.dat" using 4 title "Sequential (smp:4)" with lines, \
     "till94.dat" using 5 title "Parallel (smp:2)" with lines, \
     "till94.dat" using 6 title "Parallel (smp:4)" with lines

set terminal png size 560,400 enhanced font "Helvetica,10"
set output "chart94.png"
replot

reset



set key left top
set title "with pathological, using sequential algorithm"
set xlabel "No. of puzzles"
set ylabel "uS"
set ytics 500000

plot "till100.dat" using 1 title "no. of puzzles" with lines
plot "till100.dat" using 2 title "Sequential" with lines, \
     "till100.dat" using 3 title "Parallel" with lines, \
     "till100.dat" using 4 title "Sequential (smp:4)" with lines, \
     "till100.dat" using 5 title "Parallel (smp:2)" with lines, \
     "till100.dat" using 6 title "Parallel (smp:4)" with lines

set terminal png size 560,400 enhanced font "Helvetica,10"
set output "chart100.png"
replot

reset



set key left top
set title "simple puzzles with sequential/concurrent algorithm"
set xlabel "No. of puzzles"
set ylabel "uS"
set ytics 50000

plot "till94c.dat" using 1 title "no. of puzzles" with lines
plot "till94.dat" using 2 title "Sequential:1" with lines, \
     "till94c.dat" using 2 title "Concurrent:1" with lines, \
     "till94c.dat" using 3 title "Conc-Parallel:1" with lines, \
     "till94c.dat" using 5 title "Conc-Parallel:2" with lines, \
     "till94c.dat" using 6 title "Conc-Parallel:4" with lines

set terminal png size 560,400 enhanced font "Helvetica,10"
set output "chart94c.png"
replot

reset



set key left top
set title "puzzled with combination, Sequential Vs concurrent algorithm"
set xlabel "No. of puzzles"
set ylabel "uS"
set ytics 500000

plot "till100c.dat" using 1 title "no. of puzzles" with lines
plot "till100.dat" using 2 title "Sequential:1" with lines, \
     "till100c.dat" using 2 title "Concurrent:1" with lines, \
     "till100c.dat" using 3 title "Conc-parallel:1" with lines, \
     "till100c.dat" using 5 title "Conc-parallel:2" with lines, \
     "till100c.dat" using 6 title "Conc-parallel:4" with lines

set terminal png size 560,400 enhanced font "Helvetica,10"
set output "chart100c.png"
replot

reset
