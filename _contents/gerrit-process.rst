Deep had some concerns on this and gave some suggestion,

The following is the scenario,

- Developer create a changeset-A, defining a bunch of data structure touching
  files M and N.
- Developer create a changeset-B, that has some logic that refer to variables
  defined in changeset-B touching files X and Y.

Gerrit creates a dependency for each changeset by specifying a "Neededby"
changeset and "dependson" changeset markers.

Unfortunately, on the reviewers incoming review list, this ordering may not be
maintained, for instance, reviewer might see,

- Changeset B
- Changeset A

I am not sure whether we can configure gerrit to display proper ordering of
changesets. Can we ?

Now reviewer gives a comment to changeset-B which is also applicable to A.
Developer have three options now,
1. make independent patchset to A (files M and N) and B (files X and Y).
2. create a new changeset C that will touch files M, N, X and Y.
3. add a patchset to B touching files M, N, X and Y.


We also discussed about the process of amending commits and pushing it to
gerrit. We discussed two ways to do it,

1. developer creates changesets A, B, C and D
   a. to add a patchset to D, developer can use do "commit --amend" and push
      to gerrit
   b. to add a patchset to A
      - checkout A as separate branch with A as head
      - do "commit --amend"
      - push to gerrit
      - once a changeset is merged, rebase local/master with origin/master
        and delete the branch
   c. to add a patchset to B and C follow same steps as 1.b above.

2. developer creates changesets A, B, C and D
   a. to add a patchset to D, developer can use do "commit --amend" and push
      to gerrit
   b. to add a patchset to A
      - commit a new changeset E.
      - git rebase -i <sha1>
      - squash E with A.
      - push to gerrit
   c. to add a patchset to B and C follow same steps as 2.b above.
