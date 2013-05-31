Sudoku backtracking - in erlang
===============================

*Why erlang ?*

For past three decades the semiconductor industry promised to double the speed
of microprocessor every two years, and they did kept to their promise. Now, it
looks like they have exhausted all the available tricks and the only way to
increase computation speed is by going parallel, packing more number of cores
in the same die. But that ain't so easy, for it requires re-designing our
algorithms to run parallel. Enter concurrent programming.

Concurrent programming is a paradigm of writing computer programs that can
execute in parallel. Three decades of structured programming concepts
popularized by languages like C and Java have made the entire eco-system of
computer applications optimized for sequential programming. Now, even when we
are ready to redesign our algorithms for concurrency, its implementation,
testing and deployment are making life difficult for us. The general focus on 
Erlang here is that it may save us from some of those difficulties.

*Why sudoku ?*

After going through the language specifications, it was clear that the language
is most suited for server applications and applications that are naturally
suited for concurrency, like Twitterfall. So I decided to pick computationally
intensive algorithm that is also complex enough. My choice was to implement a
sudoku puzzle solver.

*To the algorithm*

This algorithm, that solves sudoku puzzle has exponential complexity and one
can introduce pathological combinations throwing the program into a
for-ever-loop. By tweaking the input combination and few other parameters we
can adjust the complexity of the problem and study the behavior of the language
and its run-time. Download the source code and experiment with it.

The program takes an unsolved sudoku puzzle with N elements pre-populated
(i.e) say for a 9x9 table of numbers, may be just 10 can be pre-populated. The
number of elements that are pre-populated can also be supplied as a parameter.
The algorithm itself uses a double recursive backtracking logic to find the
right combination of numbers satisfying the game rules. So, for a 9x9 table
with 10 pre-populated elements, the program must fill the remaining 81 slots
and for each slot there are 9 choices ([1,2,3,4,5,6,7,8,9]).

The first recursion logic moves from one slot to the next, column-wise and
then row-wise. At every step, it tries to reduce the available choices for an
unfilled slot. There are 6 intelligent functors that applies primitive human
logic to reduce the choices. It then detects whether it has taken the right
path by checking with the game rules. If it detects that it has taken a bad
path it backtracks.

The second recursion logic kicks in when the first recursive function detects
that it has taken the right path (so far), and finds that the current slot has
more than one choice left un-reducible. The second recursive function is
called that will recurs over each of the available choices and will once again
call back to first recursive logic. So on and so forth ...

Let us have some hands on with the code now,

$ erl  # Invoke the erlang-shell
1> application:load(games).     %% Load the application
2> application:start(games).    %% Start the application
3> sudoku_test:start_link([]).  %% Start the sudoku test server
Generate a puzzle of 9x9 table size (denoted by the 3rd parameter), with 10
elements pre-populated. Second parameter is just a seed value to initialize
Erlang's pseudo random generator,

4> T = sudoku_gen:generate(switching, 11, 3, 10).
{{0,0,0,0,3,0,0,0,0},
 {0,0,0,5,0,0,1,7,0},
 {0,0,0,0,0,0,0,0,0},
 {0,0,0,0,0,2,0,9,0},
 {0,0,0,0,0,0,0,0,0},
 {0,9,0,0,0,0,0,0,0},
 {0,0,2,0,0,3,0,0,0},
 {0,0,0,0,0,0,0,5,0},
 {0,0,0,0,0,0,0,0,0}}
Solve the generated puzzle, first parameter says the table T is of size  9x9,

5> sudoku_slv:solve( 3, T ).
{passed,{{1,2,4,6,3,7,5,8,9},
          {3,6,8,5,2,9,1,7,4},
                    {5,7,9,1,4,8,2,3,6},
                              {4,1,3,7,5,2,6,9,8},
                                        {2,8,5,3,9,6,4,1,7},
                                                  {6,9,7,4,8,1,3,2,5},
                                                            {7,5,2,8,6,3,9,4,1},
                                                                      {8,3,6,9,1,4,7,5,2},
                                                                                {9,4,1,2,7,5,8,6,3}}}
This type of algorithm is necessary to check how friendly is Erlang in designing complex algorithms with concurrency.  And of course its performance.  But before that we will see how easy and efficient it is to get started with concurrent programming in Erlang.  Reference : Thesis by Yako on Sudoku algorithms.  Download the source code and experiment with it.  Wiki page explaining the source code.
