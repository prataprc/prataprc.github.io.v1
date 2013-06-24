:title: Caveats while programming with Javascript.
:author: prataprc

Every language has exceptional situations to common rules, that were originally
explained as part of its specification, they end up as caveats in programmers
mind.

interchanging properties as objects and associative array
---------------------------------------------------------

Javascript objects are property-maps and property names can be accessed using the
membership operator. Likewise, objects can be accessed like associative arrays 
passing in property name as index.

.. gist:: prataprc/5843946.js?file=caveat1.js

note that if accessed using membership operator, property name is constrained
by identifier token rules.

hasOwnProperty
--------------

Any reference to JS object-property will follow the chain of prototypal
inheritance, so the only way to figure out whether a property is directly
attached to the object is by using ``hasOwnProperty`` method call on the
object. But what if the method is overridden accidentally ?

.. gist:: prataprc/5843946.js?file=caveat2.js

stacking Calls with setInterval
-------------------------------

``setInterval`` will execute the timeout function every X milliseconds, where X
is the timeout value for the subscribed-handler. What happens if handler
function takes more time to complete than the timeout-value ?

.. gist:: prataprc/5843946.js?file=caveat3.js

you can execute the above program to understand the behaviour of timeout
handling in Javascript. But the fact is, it is bad programming to use
setInterval a.k.a periodic-timeout if we doubt that the handler function is
going to take more time than the next timeout. One possible solution is given
in the above snippet itself.

shadowing undefined
-------------------

.. gist:: prataprc/5843946.js?file=caveat4.js

unfortunately, ``undefined`` can also be used as identifier.

semicolons and leading paranthesis
----------------------------------

.. gist:: prataprc/5843946.js?file=caveat5.js

the call to foo and bar are treated as single statement without a semicolon
in-between, ``foo()(bar(10))``.

deleting property names
-----------------------

It is not possible to delete a name whose ``DontDelete`` attribute is set.
This ``DontDelete`` attribute is a feature of javascript. Variables and
function declarations in global and function code always create properties
with DontDelete, and therefore cannot be deleted.

But ``delete`` works normal on property types, where names are added
programmatically. This applies even to global ``this``, as demonstrated by the
last block of the following gist.

.. gist:: prataprc/5843946.js?file=caveat6.js

late-binding of this
--------------------

``this`` name is bound late while making function calls.

.. gist:: prataprc/5843946.js?file=caveat7.js

in the above example, ``this`` inside test function is not bound to ``this``
of ``new Foo()`` instance when its constructor is called. Instead it is bound
to global object.

closures and namespace reference
--------------------------------

in closures, parent function's namespaces are only referred by enclosed
function, they are not copied to enclosed function's namespace.

.. gist:: prataprc/5843946.js?file=caveat7.js

outputs 10, 10 times.
