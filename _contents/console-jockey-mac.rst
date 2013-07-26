For mac, iterm2 is the pretty good. Download the .zip, unzip and cut paste the
iterm2.app folder to /Applications, as of this writting iterm2 is not
available via brew.

mercurial
---------

unfortunately I havn't found a way

.. tmux.conf.mac

# Copy paste from clip-board
bind P run "pbpaste | tmux load-buffer -; tmux paste-buffer"
bind Y run "tmux save-buffer - | pbcopy"

If you are using tmux, take a look at this,
    https://github.com/ChrisJohnsen/tmux-MacOSX-pasteboard.git

Use Option-key + mouse to select text inside tmux, then use CMD+c to copy the
selected text.
CMD+v works anyway
