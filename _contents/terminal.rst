:title: Go beyond 8 colors, 256 colors are here to stay !
:author: prataprc


Check whether your terminal supports 256 colors,

.. code-block:: bash

    tput colors

You can check available terminal database under /lib/terminfo/ subdirectory.
If you could find a database file suffixed with `256color`, then you can use
them to set the `TERM` environment variable. Most of the terminal application
will be using this variable to setup its color scheme. Now add the following
line in your shell's `rc` file, eg., $HOME/.zshrc

TODO:
    <Add C code gist based on ncurses to check colors available>

.. code-block:: bash

    export TERM=xterm-256color

If you are an zsh_ user, then you have to setup keyboard mapping for the
terminal as well. You can choose to ignore this short cut and redo the mapping
manually when you start the zsh shell next time.

.. code-block:: bash

    cd ~/.zkbd
    cp xterm-pc-linux-gnu xterm-256color-pc-linux-gnu


setup color scheme for Vim
--------------------------

There are many good schemes available for vim. Download / checkout links are
available from bottom of this page, download and copy them to your
`$HOME/.vim/colors/` directory and add the following line in `$HOME/.vimrc`
file,

.. code-block:: vim

    color jellybeans

Inside Vim, you can change the colors on the fly by doing,

.. code-block:: vim

    :color solarized

solarized_, jellybeans_, ir_black_, hemisu_ are some good color schemes, there
is also a `collection of themes <https://github.com/tomasr/dotfiles/>`_
available from github.

configuring readline for vi or emacs mode
-----------------------------------------

most terminal applications that does not require full-screen rendering will be
using the readline library to control the terminal output. To interact with
such applications using vim or emacs key-binding, there is a global
configuration for that,

.. _zsh: www.zsh.org
.. _solarized: https://github.com/altercation/solarized
.. _jellybeans: https://github.com/nanotech/jellybeans.vim
.. _ir_black:
.. _hemisu:   https://github.com/noahfrederick/Hemisu

