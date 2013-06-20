:title: Integrating pagd with git / mercurial repository
:author: prataprc

Read this `article <./blog-with-pagd.html>`_ to know how to set up your blog
site with pagd_ and host it using github_. Continue reading if you are
managing your site under a revision control system like git / mercurial.

In case you are managing your site with git or mercurial repository, your can
integrate them with pagd so that while generating the site pagd can gather
useful, and some times more accurate meta-data, for each page from the
repository. Just open the ``_context.json`` file under your site's
``_contents`` subdirectory and add the following context attribute

.. code-block:: json

   "_xcontext" : "pagd.git"

note that context attributes defined with ``_contents/_context.json`` file is 
applicable to all page contents created under `_contents` sub-directory.

If you want to integrate with mercurial repository, rename ``pagd.git`` to
``page.hg``. From `pagd`'s perspective, we are integrating git / mercurial
repository with your site using a feature called external-context.
`pagd.git` and `page.hg` are plugin names that will gather context information
from external sources. As of this writing, these plugins will gather the
following information for each page,

- author
- email
- createdon
- last_modified

To keep a tab on pagd_ - follow the
`project at github <https://github.com/prataprc/pagd>`_ and post your queries
to their mailing-list_.

.. _pagd: http://pythonhosted.org/pagd
.. _github: http://github.com
.. _mailing-list: http://groups.google.com/group/pluggdapps
