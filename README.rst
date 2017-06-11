Layout created using `pagd <http://pythonhosted.org/pagd>`_ tool,
something similar to jekyll, to generate my pages. Plugin used to generate this
site is called ``pagd.myblog``.

Follow help text from github-pages or articles like
`this <http://xlson.com/2010/11/09/getting-started-with-github-pages.html>`_
to learn about publishing static pages with github.

.. code-block:: bash

    $ mkdir prataprc.github.io      # user-pages should be in this format !!
    $ cd prataprc.github.io 
    $ pagd -l pagd.myblog create    # Create a layout using `pagd` tool.

Add content pages under `_contents` sub-directory. Note that media files for
`myblog` layout will be located under media/ sub-directory and page contents
will be located under contents/ sub-directory. Github says pages must be
generated in the root directory of the repository.

.. code-block:: bash

    $ pagd gen                      # Generate pages

Publish site.

.. code-block:: bash

    $ git init .
    $ git add .
    $ git commit
    $ git remote add origin https://github.com/prataprc/prataprc.github.io.git
    $ git push -u origin master

To add a block post, generate the pages twice.

.. code-block:: bash

    $ vi _contents/mynewpost.rst
    $ pagd gen // first pass, to generate html
    $ git add .
    $ git commit . -m "new post"
    $ pagd gen // second pass, for created_on and last_modified
    $ git add .
    $ git commit . -m "new post"
    $ git push origin master

Linking python interpreter:

.. code-block:: bash
    ln -s python3.5 python
    ln -s python3.5 python3
    ln -s /usr/local/Cellar/python3/3.5.1/Frameworks/Python.framework/Versions/3.5/bin/python3.5 python3.5
