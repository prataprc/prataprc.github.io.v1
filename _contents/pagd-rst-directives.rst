:title: Custom directives for restructured-text
:author: prataprc

Read this `article <./blog-with-pagd.html>`_ to know how to set up your blog
site with pagd_ and host it using github_. Rest of the article explain couple
of restructured directives that can be used while authoring articles and
generating a site with pagd.

source code highlighting
------------------------

If you are a programmer or some-one who wants to author articles about
programming and languages - it is likely that you will be including snippets of
code in your article. In such cases wrap your code-snippets with
``code-block`` rst-directive, like,

.. code-block:: rst

    .. code-block:: c

        void myfunc(void) {
            int i = 10;
            printf("%d %d %d %d %x ", i++, --i, ++i, ++i, i++ );
        }

while generating your web site using pagd_, above block of code will be
rendered like,

.. code-block:: c

    void myfunc(void) {
        int i = 10;
        printf("%d %d %d %d %x ", i++, --i, ++i, ++i, i++ );
    }


youtube directive
-----------------

There were many occations we wanted to refer you-tube links that can play
inside our page. For such occations,

.. code-block:: rst

    .. youtube:: 7-qGKqveZaM

and while generating the page with pagd,

.. youtube:: 7-qGKqveZaM

You can also apply custom styling for youtube widgets in your site my
modifying the CSS sytling for ``div.rst-youtube`` selectors inside
``media/myblog.css`` file.

gallery directive
-----------------

Let us say you have a bunch of charts that you would like to present them as
image gallery for your readers,

.. code-block:: rst

    .. gallery:: My collection of charts
        media/sudokucharts/nosmp.png
        media/sudokucharts/smp2.png
        media/sudokucharts/smp4.png
        media/sudokucharts/par.png
        media/sudokucharts/conc.png

and the gallery looks like,

.. gallery:: My collection of charts
    media/sudokucharts/nosmp.png
    media/sudokucharts/smp2.png
    media/sudokucharts/smp4.png
    media/sudokucharts/par.png
    media/sudokucharts/conc.png

pagd_ uses magnific-popup_ jquery plugin to show image galleries within HTML
pages. They have excellent documentation and there are many ways to customize
the plugin - which you can learn from their project site. There is also a bunch
of CSS selectors that are available in ``media/myblog.css`` with which you can
do some basic cusomization as well.

gist directive
--------------

If you have code gist in github and you want to embed them inside your
article, use the following directive,

.. code-block:: rst

    .. gist:: prataprc/5843946.js

where ``prataprc`` is the user-name and it will expand to full url - 
https://gist.github.com/prataprc/5843946.js.

To include a specific file from the gist,

.. code-block:: rst

    .. gist:: prataprc/5843946.js?file=caveat7.js

This will embed only ``caveat7.js`` file inside your article.

.. _pagd: http://pythonhosted.org/pagd
.. _tayra: http://pythonhosted.org/tayra
.. _github: http://github.com
.. _mailing-list: http://groups.google.com/group/pluggdapps
.. _magnific-popup: https://github.com/dimsemenov/Magnific-Popup
