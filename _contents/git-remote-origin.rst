Github suggests following commands when creating a new repository.

.. code-block:: bash

    git remote add origin git@github.com:<username>/<reponame>.git
    git push -u origin master

You can also add remote repository with a different name, for example `github`
instead of origin (which obviously already exists in your system), like this:

.. code-block:: bash

    git remote add github git@github.com:<username>/<reponame>.git

Remember though, everywhere in the tutorial you see `origin` you should
replace it with `github`. For example,

.. code-block:: bash

    git push origin master
    # should now be
    git push github master.

However, if you want to see what that origin which already exists is, you can
do a git remote -v. If you think this is there by some error, you can remove
it and add the proper one by doing this:

.. code-block:: bash

    git remote rm origin
    git remote add github git@github.com:<username>/<reponame>.git
