Saw this post_ and started musing on computing machines -

Firstly, lambda machines are not yet built.

But we have `turing machines`_, so we had to worry about designing a
fast ISA and efficient way to move data between memory and processor.

RISC_ - did show us on how to pack a processor efficiently and make
it fast via pipelining, branch prediction et al..

Btw, processor got faster while memory lagged behind.

Cache, build with costly high speed SRAMS, was added that would bridge
the gap between processor and memory.

That brings us to how the fastest machines are built,
a. A trace architecture that will pack a fast processing.
b. A cache architecture that will bridge memory with processor.

So, how fast a language can be ? Only as fast as the compiler understands
the machine, and that understanding happends over a long time, after
hundreds of man-years spent.

After which, a simple change to the processor (say like reducing the cache, or
moving to NUMA) can adversely negate all that effort spent. The effort spent
becomes effort lost.

So, the machine does not dare to change ! Welcome to the right wing of
machine computing.

And Lastly, lambda machines are yet to be built.

.. _post: http://zhen.org/blog/go-vs-java-decoding-billions-of-integers-per-second
.. _turing machines: https://en.wikipedia.org/wiki/Turing_machine
.. _RISC: https://en.wikipedia.org/wiki/Reduced_instruction_set_computing
