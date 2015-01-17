Saw this `post <http://zhen.org/blog/go-vs-java-decoding-billions-of-integers-per-second>`_

Here are my thoughts,

First, lambda machines are not yet built so we can not say turing ones are the
best ones.

But we have turing machines, so we had to worry about designing a fast ISA and
efficient way to move data between memory and processor.

RISC - did show us on how to pack a processor efficiently and make it fast via
pipelining.

Btw, processor got faster while memory lagged behind.

Cache was added that would bridge the gap between processor and memory.

So that brings us to how the fastest machines are built,
a. A trace architecture that will pack a fast processing.
b. A cache architecture that will bridge memory with processor.

So how fast a compiler can be ? Only as fast as it understands the machine and
that understanding happends over a long time, after hundreds of man-years
spent.

After which, a simple change to the processor (say like reducing the cache, or
moving to NUMA) can adversely negate all that effort spent. The effort spent
becomes effort lost.

So, the machine does not dare to change !!!!!
