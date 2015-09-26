> Or, if you're not into poetry, some pseudocode...
>
>  assert("plain old error handling code" > "assert");

I prefer poetry, or in its absence aphoristic prose :)

Golang says, multi value returns or panic/recover.
    - http://blog.golang.org/error-handling-and-go

like most _practical_ languages they simply short-circuit
the execution path. Ofcourse it will come back to bite us
if side-effects are not adequatly taken care. And multi-value
return as an after-thought ?

Erlang says, let it crash - http://c2.com/cgi/wiki?LetItCrash

because the number of variables and assumptions are
so high that we will never ship if we had to get into
every last detail.

Rust says, be it authoring an OS or authoring a log-parser
error handling shall not interfere with code composability
    - https://doc.rust-lang.org/book/error-handling.html

if types are aligned then functions are composable, and
they say algebraic-data-types is a clean solution rather
than multi-value returns, but their error handling seem
to be an ongoing story ?

Haskell says, exception make a function impure, and
un-handled exception is an error,
    - https://wiki.haskell.org/Exception

it takes a thesis in category theory and a monadic
implementation to handle exceptions, after which
every thing that follow becomes pure, and
leaves rest of the programming world
scratching its head …

asserts, exceptions and error-returns - looks like
sharpest minds in our industry are still deciphering
a clean way out.

IMHO given such a loaded situation if programmer handles
exceptions and errors bad-ly is he/she the only person
to blame ? After all, if the language is in-adequate why
blame the speakers.

Thanks for reading this far,
