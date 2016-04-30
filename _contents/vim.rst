:title: Vim editor
:author: prataprc

Saving your editor session
--------------------------

As we work with projects we tend to open a large number of files, with vim
features like tabbed-open, split-view etc ... If you want to take a break and
return back to the same environment later, you can do so by saving the vim
session as,

.. code-block:: vim

    :mksession! .vimsession

current vim session is saved under file ``.vimsession`` - overwriting if it
already exists.

Some common problems with vim
-----------------------------

If you cannot open a file at the same line number you closed it at last time,
add the following in your `.vimrc` file.

.. code-block:: vim

    " Vim jump to the last position when reopening a file
    if has("autocmd")
      au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
          \| exe "normal! g'\"" | endif
    endif

also make sure that $HOME/.viminfo has read/write permissions enabled.
