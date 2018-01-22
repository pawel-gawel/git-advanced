# Git Index

Also called staging area. Index file path is `.git/index`. It is a single binary file that keeps track of all files in the current branch. 

This file holds a snapshot of working directory. If anything in working directory changes relatively to index file, you can see the list of changes by running `git status`. You can then add those changes to index by running `git add`. 

Index serves as a staging area and allows you to choose which changes you want to commit to your repository. You can also think of it as virtual tree that points to blob objects that are to be committed. Its then used to create a new tree object that will be pointed by newly created commit.

Having staging area allows you to pick the very changes that you want to be part of new commit. It also allows you to pick only some changes from single file to be taken under consideration, using `git add -p`. This way you can see the very same file with changes to be committed and not staged for commit. 

### See changes between the index and previous commit 

```
git diff --cached
```

By default `git diff` will only show you difference between your working tree and files not yet added to the index (as those changes are about to be committed to repository).

### Tell index to ignore any changes for some particular file

```
git update-index --assume-unchanged -- somefile.txt
```

### Manually add git  object as a filename with defined file permissions to index 

```
git update-index --add --cacheinfo 100644 [SHA] [FILENAME]
```

```

``` 
