#!/bin/bash

# To change repo local configuration
$ git config --local user.name "John Doe"
$ git config --local user.email "john@doe.org"

# To update author of the last commit 
git commit --amend --author="Author Name <email@address.com>"

# To update author of for the next commit
git commit --author="John Doe <john@doe.org>"


# To update author of commit in history, you have to use
# git rebase -i, then mark commit to edit, then when git 
# stops on that commit, go with 
git commit --amend --author="John Doe <john@doe.org>" --no-edit
# and of course 
git rebase --continue

