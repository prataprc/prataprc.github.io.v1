Console is pairing an input device called keyboard and an output device called
the monitor, that when jacked into a computing machine transforms any ordinary
human-being into a console-jockey. Let us ride on ..

This post is organized in five parts namely, the terminal, shell, programming
languages, version control and handy bunch of tools.

Desktop
-------

keyboard tweaks

.. code-block:: bash

    sudo apt-get install gnome-tweak-tool // to remap key codes.
    sudo apt-get install gnome-session-fallback // to go back to classic desktop

fonts and konsole

.. code-block:: bash

    curl -kL https://raw.github.com/cstrap/monaco-font/master/install-font-ubuntu.sh | bash


terminal
--------

Terminal is a 2 dimensional array of character cells to display human readable
text. Although it is least useful in the context of pixel graphics, it tends
to be most versatile for keyboard jockeys. In present day computers, terminals
are almost always emulated, here are some such emulators,

.. code-block:: bash

    sudo apt-get install konsole terminator
    sudo apt-get install libvte-dev

`libvte_` is the popular library that provides the terminal emulator for most
of the gtk_ based terminal application.

If you are power user of terminal, who end up opening several windows and
several tabs in each window, then you must seriously consider tmux_ (or its
ancestor screen_).

**tmux**,

In short, tmux_ allows user to create sessions and attach any number of
terminal emulators to a session. Inside a session you can create any number
of windows, even splitting them into panes. There is a whole bunch of short-cut
keys defined for you to manage, migrate and monitor your windows/panes and
emulator clients. For detailed information, check out its man-page.

.. code-block:: bash

    sudo apt-get install tmux
    man tmux    # To learn about tmux.

shell
-----

Terminal always launches a shell by default. Most likely, the default shell is
defined in /etc/passwd or in terminal's configuration file. If you are a power
user you ought to try zsh_.

.. code-block:: bash

    sudo apt-get install zsh zsh-completions zsh-lovers zsh-syntax-highlighting

zsh comes with an awesome completion, with syntax-highlighting you can even
get live feed back about what you are typing, similar to fish-shell.

Don't forget to configure your shell with .zshrc, there are many samples
available through google.

editor, vim
-----------

Start with vim_. Sleek, productive and can get extremely powerful for text
editing and text manipulations.

.. code-block:: bash

    sudo apt-get install exuberant-ctags vim vim-scripts vim-python-jedi
    sudo apt-get install vim-syntax-docker vim-syntax-go vim-vimerl
    sudo apt-get install vim-vimerl-syntax vim-athena

vim_ comes with a built in scripting language. But bindings are available for
several languages like python, lua, tcl etc ... To know the available binding
in your vim installation,

.. code-block:: bash

    vim --version

should list ``+python``, ``+lua`` etc.. in the output.

Similarly, to copy/paste content from OS clipboard ``+clipboard`` option should
be listed when doing --version, subsequently use  ``+yy``, ``+p`` and related
commands inside vim will copy/paste from OS clipboard.

Supposing Vim has clipboard support, synchronizing Vim's default register and
the clipboard register is possible by adding the following line in your
`.vimrc` file,

.. code-block:: bash

    set clipboard^=unnamed

allowing you to simply use y and p.

under /etc/vim/vimrc uncomment lines to enable vim to jump to the last
position when opening a file.

programming languages
---------------------

Now that we have an editor, here is a list of uber-cool languages that you should
install and play-around with,

**lua**,

In spirit lua_ is similar to javascript, with some semantic support for
concurrency using co-routines. It is an elegant and cleanly done language
which must be the first choice of language for configuring/extending
applications.

.. code-block:: bash

    sudo apt-get install lua luajit luarocks

luajit_ is a super-fast Just-in-time compiler for lua that can almost compete
with Google-javascript-V8. luarocks_ is package manager for lua. Packages
can be installed local to a single user or under system directory making it
available for all users.

**node.js**,

node.js_ is a javascript tool that encourages the paradigm of event-driven
programming, similar to what we see in web-browsers. It is one of the fastest
growing language-tool-kit.

.. code-block:: bash

    sudo apt-get install nodejs npm

npm_ is node-package-manager. Installing the package will also install the
console based interactive shell for node. node packages when 

**python**,

Python_ is dynamically typed, high level programming language. It is both
suitable for quick scripting and prototyping applications, has got a wonderful
collection of library that comes along with the distribution and countless
third party packages.

.. code-block:: bash

    sudo apt-get install python python3 python-doc python3-doc
    sudo apt-get install python-pip python3-pip # package manager for python
    sudo apt-get install ipython ipython3   # powerful interactive shell
    sudo apt-get install python-dev python3-dev # python development package

right now python is going through a phase of split personality, one called as
2.x version and the other called as 3.x version. Incompatibilities exist
between these two versions, and there are still some applications/tools that
are slowly changing to 3.x version.

This leads to an interesting situation for developers, who may want to develop
with python2.x sometimes and with python3.x other times. Normally get around this
problem by using ``virtualenv``.

.. code-block:: bash

    # Installing setuptools / pip / virtualenv
    sudo apt-get install python3-setuptools # Install package python3-setuptools,
    sudo easy_install3 pip  # will give you the command pip-3.2 like kev's solution.
    sudo pip-3.2 install virtualenv

Since python2.x and setuptools will eventually get phased out (hopefully),
above gymnastic may not be relevant in the longer run.

If you are authoring python package and uploading them into python-cheeseshop,
pypi_ you can create a ~/.pypirc to automatically upload your package with
credential. Make sure that the file is readable only by your uid,

.. code-block:: ini

    [distutils]
      index-servers = pypi

    [pypi]
      repository: http://www.python.org/pypi
      username: <username>
      password: <password>

**haskell**,

Haskell_ is a functional language that does lazy evaluation. It has a very
strong community of programmers and large collection of libraries and tools.

.. code-block:: bash

    sudo apt-get install ghc ghc-doc ghc-haddock ghc-prof haskell-platform
    cabal update                # Update list of haskell packages.
    sudo apt-get install darcs

darcs_ is a DVCS written in haskell and many haskell projects use that as
their revision control. Cabal_ is the package manager for haskell.

**erlang**,

erlang_ is the default language to create multi-node distributed and concurrent
applications.

.. code-block:: bash

    sudo apt-get install erlang erlang-base-hipe erlang-doc erlang-manpages

HiPE_ is High Performance Erlang, a just-in-time compiler for erlang. Even
though it is not as sophisticated as JVM it does a decent job.

**ruby**,

Ruby_ is good to create scriptable tools where the scripts, although
interpreted as ruby program, can be written in declarative style.

.. code-block:: bash

    sudo apt-get install ruby

**go**,

.. code-block:: bash

    sudo apt-get install golang gccgo-go

To work with bleeding edge Go, download the latest version for the target
machine,

.. code-block:: bash

    tar -C /usr/local -xzf go$VERSION.$OS-$ARCH.tar.gz
    export PATH=$PATH:/usr/local/go/bin

Get the tutorial on go.

.. code-block:: bashrc

    go get code.google.com/p/go-tour/gotour

Mercurial must be installed for `go get` command to work.

**development tools**,

use ncurses_ to author terminal applications.

.. code-block:: bash

    sudo apt-get install automake autoconf  # Used for compiling C packages.
    sudo apt-get install openssl  ncurses-examples # Secure socket layer
    sudo apt-get install ncurses-base libncurses-dev ncurses-doc
    sudo apt-get install libxml2-dev libxslt1-dev   # a tolerant HTML/XML parser
    sudo pip install lxml
    sudo pip3 install lxml

To configure DNS. Add this line in /etc/dhcp/dhclient.conf

.. code-block:: text

    option domain-name-servers 8.8.8.8

For development that does not consider full-screen terminal, just a reasonable
control on keyboard-input line by line, readline_ is very good. There is also
rlwrap tool that will give readline like interface for many interpreters.

.. code-block:: bash

    sudo apt-get install readline rlwrap

Readline_ settings to use vim key-binding. Open /etc/inputrc and 
add the following line,

.. code-block:: text

    set editing-mode vi

version control
---------------

subversion is a great replacement for CVS, which have the concepts of tagging
and branching straightened out when compared to CVS.

.. code-block:: bash

    sudo apt-get install subversion

**Mercurial**,

When new to DVCS_ (distributed version control system) Mercurial_ is better
place to start. Written in C and python is fast and fun to work with, although
it might complain when commiting large files (>10M).

.. code-block:: bash

    sudo apt-get install mercurial

The following configurations might be helpful when working with ``hg`` (the
command line program to access mercurial repositories). Add them under ``~/.hgrc``

.. code-block:: ini

    [ui]
    username = username <emailid>
    verbose = True

If you are planning to use code.google.com or bitbucket with mercurial you
might want your credentials to be automatically authenticated. For such cases
add a list of credentials under ``[auth]`` section in the ``~/.hgrc``

.. code-block:: ini

    [auth]
    paenv-gc.prefix = code.google.com/p/paenv/
    paenv-gc.username = prataprc
    paenv-gc.password = <password>
    paenv-gc.schemes = http https

    pluggdapps-gc.prefix = code.google.com/p/pluggdapps/
    pluggdapps-gc.username = prataprc
    pluggdapps-gc.password = <password>
    pluggdapps-gc.schemes = http https

In the above configuration `paenv-gc` and `pluggdapps-gc` prefixes group auth
credentials for different repositories.

**git**,

Most popular among version control system is git_, thanks to linux and github
for doing that.

.. code-block:: bash

    sudo apt-get install git

After installing git, update the user configuration file ~/.gitconfig,

.. code-block:: ini

    [color]
        ui = auto

To change your git username setting, use the git config command,

.. code-block:: bash

    git config --global user.name  "Anand T"         # Set a new name
    git config --global user.email "anand@gmail.com" # Set your emailid
    git config --global core.editor /usr/bin/vim     # use editor

the --global flag writes this setting into your global git config. If you
remove that flag you can override the setting for your current repository.
You can learn more with https://help.github.com/articles.

In case you want to publish mercurial repositories on github or with any other
git respository-hosting service, you can use hg-git_ and dulwich_

.. code-block:: bash

    sudo pip install hg-git dulwich
    sudo pip3 install hg-git dulwich

and add the following configuration settings under .hgrc file

.. code-block:: ini

    [extensions]
    hgext.bookmarks =
    hggit=

ssh setup for github

.. code-block:: bash
    ssh -T git@github.com

**Few other version control systems**,

.. code-block:: bash

    sudo apt-get install bzr    # created and maintained by canonical-ubuntu
    cabal install darcs         # written in haskell

in case you have not installed ghc and haskell-platform, it is explained
else where in this article. Some say that darcs_ has the best support for
cherry picking and in some sense true to the spirit of Distributed Version
Control System.

dictionary
----------

sdcv_ is command line interface for stardict dictionary program.

.. code-block:: bash

    sudo apt-get install sdcv
    sdcv -l

you can download dictionaries and install them under ~/.stardict/ directory
and add following exports in your bashrc or zshrc file.

.. code-block:: bash

    export STARDICT_DATA_DIR=$HOME/.stardict/dic
    export SDCV_HISTSIZE=10000

tools and applications
----------------------

A collection of useful console application.

.. code-block:: bash

    sudo apt-get install mc                 # Midnight-commander, file manager
    sudo apt-get install mutt               # email client
    sudo apt-get install muttprint muttprint-manual mutt-patched 
    sudo apt-get install elinks elinks-doc  # browse web in text-mode
    sudo apt-get install finch              # console version of pidgin
    sudo apt-get install newsbeuter         # RSS / Atom feed reader
    sudo apt-get install irssi              # IRC client
    sudo apt-get install sc                 # spread-sheet calculator
    sudo apt-get install cmus               # music player
    sudo apt-get install urlview            # extracting url from text 
    sudo apt-get install w3m
    sudo apt-get install rename

More tools and utilities.

.. code-block:: bash

    sudo apt-get install htop atop xclip rar curl apache2-utils
    sudo apt-get install sqlite3    # Access SQL-like database as library
    sudo apt-get install gimp       # Image processing tool

Add package repository for adobe acrobat.

.. code-block:: bash

    # Application - adobe acrobat
    sudo apt-add-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
    sudo apt-get update
    sudo apt-get install acroread

To share your file-system with Windows, use samba server and configure the
user-name.

.. code-block:: bash

    # Optional - samba
    sudo apt-get install samba samba-common python-glade2 system-config-samba
    # After adding the shared directory, do the following
    sudo smbpasswd -a <username>

ssh and automatic authentication for tools using ssh. After generating the key,
append id_rsa.pub to client's `authorized_keys` under ``.ssh/authrized_keys``

.. code-block:: bash

    sudo apt-get install openssh-client openssh-server
    ssh-keygen -t rsa   # Optional ssh auto login
    chmod 700 $HOME/.ssh # security
    sudo apt-get install ssh-askpass
    service ssh restart

GUI tools and utilities.

.. code-block:: bash

    # Optional packages - settings, configuration and desktop
    sudo apt-get install firefox chromium-browser
    sudo apt-get install myunity
    sudo apt-get install indicator-multiload    # Load indicator applet

Installing fonts for Konsole. I especially like ``inconsolata``. After running
fc-cache start the konsole and configure your desired fonts.

.. code-block:: bash

    sudo apt-get install ttf-inconsolata fonts-inconsolata
    sudo apt-get install xfonts-terminus console-terminus
    sudo fc-cache 
    fc-cache

.. _libvte: https://developer.gnome.org/vte/0.27/
.. _gtk: www.gtk.org/
.. _tmux: http://tmux.sourceforge.net/
.. _screen: https://www.gnu.org/software/screen/
.. _zsh: http://www.zsh.org/
.. _vim: http://www.vim.org/
.. _luarocks: http://luarocks.org/
.. _luajit: http://luajit.org/
.. _lua: http://www.lua.org/
.. _node.js: http://nodejs.org/
.. _npm: https://npmjs.org/
.. _python: http://www.python.org/
.. _pypi: https://pypi.python.org/pypi
.. _haskell: http://www.haskell.org/haskellwiki/Haskell
.. _darcs: http://darcs.net/
.. _sdcv: http://sdcv.sourceforge.net/
.. _dulwich: https://github.com/jelmer/dulwich
.. _hg-git: http://hg-git.github.io/
.. _git: http://git-scm.com/
.. _mercurial: http://mercurial.selenic.com/
.. _dvcs: http://en.wikipedia.org/wiki/Distributed_revision_control
.. _readline: http://cnswww.cns.cwru.edu/php/chet/readline/rltop.html
.. _ruby: http://www.ruby-lang.org/en/
.. _ncurses: http://www.gnu.org/software/ncurses/
.. _erlang: http://www.erlang.org/
.. _hipe: http://www.erlang.org/doc/apps/hipe/
.. _cabal: http://www.haskell.org/cabal/

