:title: Blog with pagd, github and favorite text-editor
:author: prataprc

First time I started blogging it was with blogspot_, which was too cumbersome
to me and eventually lost interest. Second time around, I started by listing
down my requirements,

- maintain my articles in a repository so that I can work with them as I
  move around.
- by committing to the repository, my article gets published.
- basic features like, wiki-style markup, code highlighting, referring to
  image URL, etc ... are important.
- customizable layouts and templates.

And found that github can address some of those. It can host static sites for
me - even plain old HTML files, and pagd_ filled up the remaining
requirements. Please note that techniques explained here are suitable for
folks who are using a linux distribution or Mac OS-X and comfortable with shell
interface.

How do I setup my blog site ?
-----------------------------

It is easy, create a virtual environment, install ``pagd``, and use
`pagd.myblog` plugin to create a site layout. Let us go one step at a time,

First get Python3.x for your distribution, Pagd works only with Python3. In
case of mac, you can use `brew install python3` to get the latest Python3.x
version.

Second, setup a virtual environment to install Pagd and its dependencies. The
following example assumes Python3.2 as your python version. You can change it
to Python3.3 or later based on you machine's python version.

.. code-block:: bash

    # To install on ubuntu
    sudo apt-get install python3-setuptools     # Install python3-setuptools
    sudo easy_install3 pip          # will give you the command pip-3.2
    sudo pip-3.2 install virtualenv

    # To install on mac-osx,
    brew install python3    # automatically installs pip and setuptools
    pip install --upgrade setuptools pip
    pip install --upgrade virtualenv

I hope that in coming future linux distributions will have python-3.x by
default and comes with ``pip`` pre-installed, in which case executing ``sudo
pip install virtualenv`` should suffice. Let us now create a virtual
environment to play with ``pagd``.

.. code-block:: bash

    $ virtualenv --python=python3.2 env     # env/ will be created under `pwd`
    $ source env/bin/activate       # enter the virtual environment
    (env)$ pip install pagd

The example suggests Python3.2, but you can use any later Python3 version.
Installing pagd_ package will provide you ``pagd`` command line script and as
long as you are inside virtual environment the command will be available via
`$PATH`.

``creating my blog layout``

One of the first thing that we do when using ``pagd`` is to create a layout
- in this case a layout implemented by `pagd.myblog` plugin. The name of the
plugin is `myblog` which comes pre-packaged with Pagd, hence we address it as
`pagd.myblog`.

.. code-block:: bash

    (env)$ pagd create

A layout is created under the current working tree, so make sure to change to
an appropriate path under your home-directory before executing the above
command. And executing the above command will create a bunch of files and
directories for you.

.. code-block:: text

    +- config.json
    +- _contents/
    +- media/
    +- _templates/

To start with, you don't have to bother about ``_templates/`` and ``media/``
directories. Just add your articles under ``_contents/`` directory in one of
the supported formats - which are extensible by plugins - and as of
this writing,  plain-text, ReStructured-text, markdown and html formats are
supported. Keep a tab on pagd_ project site to know what else is getting
added.

Make sure that your ``_contents/`` directory have a file by name index.<format>
which will be converted to `index.html` while generating the site.
`index.html` will be the main page for your web site.

Once you have your articles, generate the site.

.. code-block:: bash

    (env)$ pagd gen

This will generate the web site, translating your contents into html pages.
Above command must be executed under the root-directory of your layout and
unless ``-t`` switch, specifying a target directory, is passed via command
line, index.html and all the other pages will be placed relative to your
layout's root-directory.

You can do ``pagd gen --help`` to learn available options.

Add to github and publish your site
-----------------------------------

Github has certain `conventions <http://pages.github.com/>`_ on hosting a
repository as personal blog site. Since that could change in future, I am not
going to explain them here, may be in a separate post.

Once you have your repository setup in github, like in my case
``prataprc.github.io``, you can start adding your files into the repository
and commit them after every modifications.

Make sure that you run ``pagd gen`` command before adding / committing files
into your github repository.

To keep a tab on pagd_ - follow the
`project at github <https://github.com/prataprc/pagd>`_ and post your queries
to their mailing-list_.

Reference
---------
* `python on mac`_ : installing Python3.x on mac using home brew.
* pagd_: Pagd microsite with documentation and internals.
* pluggdapps_: Pagd depends on Pluggdapps design elements.
* tayra_: default templating language used in Pagd.
* blogspot_: blogsite maintained by google.
* mailing-list_: pluggdapps/pagd developer and user mailing list.

.. _pagd: http://pythonhosted.org/pagd
.. _pluggdapps: https://github.com/prataprc/pluggdapps
.. _tayra: https://github.com/prataprc/tayra
.. _blogspot: www.blogger.com
.. _mailing-list: http://groups.google.com/group/pluggdapps
.. _`python on mac`: https://github.com/Homebrew/homebrew/wiki/Homebrew-and-Python
