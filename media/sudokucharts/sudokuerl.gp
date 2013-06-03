set key left top
set title "simple puzzles using sequential algorithm"
set xlabel "No. of puzzles"
set ylabel "uS"
set ytics "10"

plot "till94.dat" using 1 title "no. of puzzles" with lines
plot "till94.dat" using 2 title "Sequential" with lines, \
     "till94.dat" using 3 title "Parallel" with lines, \
     "till94.dat" using 4 title "Sequential (smp)" with lines, \
     "till94.dat" using 5 title "Parallel (smp)" with lines

set terminal png size 560,400 enhanced font "Helvetica,10"
set output "chart94.png"
replot

reset



set key left top
set title "with pathological, using sequential algorithm"
set xlabel "No. of puzzles"
set ylabel "uS"
set ytics "10"

plot "till100.dat" using 1 title "no. of puzzles" with lines
plot "till100.dat" using 2 title "Sequential" with lines, \
     "till100.dat" using 3 title "Parallel" with lines, \
     "till100.dat" using 4 title "Sequential (smp)" with lines, \
     "till100.dat" using 5 title "Parallel (smp)" with lines

set terminal png size 560,400 enhanced font "Helvetica,10"
set output "chart100.png"
replot

reset



set key left top
set title "concurrent Vs sequential algorithm, in SMP mode"
set xlabel "No. of puzzles"
set ylabel "uS"
set ytics "10"

plot "till94c.dat" using 1 title "no. of puzzles" with lines
plot "till94.dat" using 2 title "Sequential" with lines, \
     "till94.dat" using 3 title "Seq-Parallel" with lines, \
     "till94c.dat" using 2 title "Concurrent" with lines, \
     "till94c.dat" using 3 title "Conc-Parallel" with lines

set terminal png size 560,400 enhanced font "Helvetica,10"
set output "chart94c.png"
replot

reset



set key left top
set title "with pathological, Sequential Vs concurrent algorithm, in smp"
set xlabel "No. of puzzles"
set ylabel "uS"
set ytics "10"

plot "till100c.dat" using 1 title "no. of puzzles" with lines
plot "till100.dat" using 2 title "Sequential" with lines, \
     "till100.dat" using 3 title "Seq-Parallel" with lines, \
     "till100c.dat" using 2 title "Concurrent" with lines, \
     "till100c.dat" using 3 title "Conc-Parallel" with lines

set terminal png size 560,400 enhanced font "Helvetica,10"
set output "chart100c.png"
replot

reset
