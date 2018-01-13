#!/bin/bash

git config --local rerere.enabled true

# Now you can do merges with the same conflict and it will be resolved automatically
# Although it will be resolved, git will pause before committing the merge 
# giving you a chance to review auto-resolved conflict.

# You stll have to manually stage this file and go with git commit to finalize merge

# Very useful when you build releases (or different versions of app) with picked up single features
# and you have conflicts that keeps coming back


# To demo: feature branch merged to master with conflict that you resolve.
# Then reset master branch, enable feature, merge it again and repeat master branch reset and re-merging.
# Git will tell you that it resolved conflict automatically, go with git status to see what's going on.
# Review resolved conflict, then git add [file] and git commit

 
