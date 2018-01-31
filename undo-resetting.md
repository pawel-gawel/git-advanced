# Undo - resetting 

Can only work backward from the current commit.

To clear all uncommited changes in working directory

```
git reset --hard HEAD
```

To reset branch to previous commit 

```
git reset HEAD^
```

To unstage file 

```
git reset -- FILE
```

`--soft` - does not touch the index file or the working tree at all
`--mixed` - resets the index but not the working tree
`--hard` - resets the index and working tree


To unstage single changes (opposite to `git add -p`)

```
gt reset -p
```

---

https://www.atlassian.com/git/tutorials/resetting-checking-out-and-reverting