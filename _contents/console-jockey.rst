A console, is pairing of output device, called the monitor, and input device,
called the keyboard, that when jacked into a computing machine transforms any
ordinary human being into a console-jockey. Let us ride on ..

terminal
--------

Terminal is a 2 dimensional array of character cells to display human readable
text. Although it is least useful in the context of pixel graphics, it tends
to be most verstaile for keyboard jockeys. In present day computers, terminals
are almost always emulated, here are some such emulators,

.. code-block:: bash
    sudo apt-get install konsole terminator
    sudo apt-get install libvte libvte-dev

`libvte_` is the popular library that provides the terminal emulator library
for most of the gtk_ based applications.

version control
---------------

.. code-block:: bash
    sudo apt-get install mercurial git bzr subversion darcs
    sudo easy_install hg-git

Git user configuration file.

.. gist:: ini

dictionary
----------

sudo apt-get install sdcv

sdcv -l
sdcv --data-dir ~/.dict/

essential tools
---------------

.. code-block:: bash
    sudo apt-get install zsh ssh gnome-shell
    sudo apt-get install vim-gtk vim-gnome vim-doc
    sudo apt-get install htop rar curl apache2-utils sqlite3 gimp
    sudo apt-get install exuberant-ctags 
    sudo apt-get install autoconf
    sudo apt-get install openssl
    sudo apt-get install firefox chromium-browser
    sudo apt-get install erlang erlang-base-hipe erlang-doc erlang-manpages
    sudo apt-get install python python3.2 python-doc python3.2-doc ipython ipython3
    sudo apt-get install python-dev
    sudo apt-get install ghc ghc-doc ghc-haddock ghc-prof
    sudo apt-get install ruby rubygems
    sudo apt-get install python3-dbus pygobject

    # popular terminal applications.
    mutt, finch, newsbeuter, irssi, sc, cmus, cmatrix, moc, sipcalc, teapot,
    pianobar, calcurse

    xclip - clipboard tool

    ------------------------------
    finch

    You can do a bunch of things with the mouse in finch (after putting "mouse
    = 1" in ~/.gntrc), including selecting text over multiple lines in
    conversation windows, which is hard to do with the mouse selection in your
    terminal - so having the mouse enabled in finch can be advantageous. For
    at least a few people, screen is missing the kmous capability entry in its
    terminfo. Here's how to add it:

    From the terminal in which you run screen, and while not in screen:

    infocmp | sed -n 's/.*\(kmous=[^,]\+\).*/\1/p'
    (from what I've read, for this to work in ncurses, the value "must" be
    "\E[M"?) Within screen:

    infocmp > tmp
    Open tmp and add the kmous entry from above, save and close and do:

    tic tmp
    For tmux users, please note screen uses the same terminfo description as
    tmux does.
    --------------------------------

    hamster-applet - for time tracking

    pidgin

    # For wxwidgets
    sudo apt-get install libwxgtk2.8-dev libgl1-mesa-dev libglu1-mesa-dev libpng3
    # For gtknode + erlang
    sudo apt-get install gnome-core-devel build-essential libgtk2.0-dev 
    sudo apt-get install libgtk2.0-doc devhelp libglade2-0 libglade2-dev
    # NCurses
    sudo apt-get install libncurses-dev ncurses-doc ncurses-examples
    # For otp, Ncurses above is required.
    sudo apt-get install libwxgtk2.8-dev libgl1-mesa-dev libglu1-mesa-dev libpng3
    # Other packages, still useful.
    sudo apt-get install libxml2-dev libxslt1-dev

    # Installing setuptools / pip / virtualenv for pluggdapps platform
    sudo apt-get install python3-setuptools # Install package python3-setuptools,
    sudo easy_install3 pip  # will give you the command pip-3.2 like kev's solution.
    sudo pip-3.2 install virtualenv

    # Application - adobe acrobat
    sudo apt-add-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
    sudo apt-get update
    sudo apt-get install acroread

    # Optional - samba
    sudo apt-get install samba samba-common python-glade2 system-config-samba
    # After adding the shared directory, do the following
    sudo smbpasswd -a pratap

    # Optional ssh auto login
    ssh-keygen -t rsa
    # Append id_rsa.pub to all the client's `authorized_keys` under .ssh/
    sudo apt-get install ssh-askpass

    # Optional packages - settings, configuration and desktop
    sudo apt-get install myunity
    sudo apt-get install indicator-multiload
    $HOME/bin/konsole-terminus # Couple of fonts for konsole.

    # Optional packages - Top console apps.
    sudo apt-get install mc mutt elinks elinks-doc finch newsbeuter irssi sc cmus
    sudo apt-get install urlview muttprint muttprint-manual mutt-patched w3m

    # Configuration for mutt,
    mkdir -p ~/.mutt/cache/headers
    mkdir ~/.mutt/cache/bodies
    touch ~/.mutt/certificates

    # Optional packages
    sudo apt-get install calibre 

    # Building vim with python3
    sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
                         libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
                         libcairo2-dev libx11-dev libxpm-dev libxt-dev \
                         python3.2-dev
    hg clone https://vim.googlecode.com/hg/ vim
    cd vim-hg
    cd src
    make distclean
    ./configure --with-features=huge --enable-python3interp \
                --with-python-config-dir=/usr/lib/python3.2/config
    make

    # .pypirc file for uploading python package to python cheese shop. Make sure
    # that the file is readable only by pratap.
    [distutils]
      index-servers =
        pypi

    [pypi]
      repository: http://www.python.org/pypi
      username: <username>
      password: <password>

    # Configure your commit email address for git respository
    cd <git-root>
    git config --global user.email "prataprc@gmail.com"
    git config --global user.email # To check the configuration.

    # set mercurial respository's username and password to commit to
    # code.google.com
    [auth]
    paenv.prefix = code.google.com/p/paenv/
    paenv.username = prataprc
    paenv.password = 
    paenv.schemes = http https

    # set username for mercurial repository
    [ui]
    username = Pratap Chakravarthy <prataprc@gmail.com>

    # To convert mercurial repository to git repository refer to,
    ls sandbox/mercurial/docs/*

    # To configure DNS. Add this line in /etc/dhcp/dhclient.conf
    option domain-name-servers 8.8.8.8

    # Readline settings,
    # Open /etc/inputrc and add the following line -
    set editing-mode vi

    # Install node.js
    sudo add-apt-repository ppa:chris-lea/node.js
    sudo apt-get update
    sudo apt-get install nodejs

setting up with github.

http://www.karan.org/blog/index.php/2009/08/25/multiple-ssh-private-keys

.. _libvte: https://developer.gnome.org/vte/0.27/
.. _gtk: www.gtk.org/
