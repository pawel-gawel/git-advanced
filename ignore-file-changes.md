# Ignore file changes

## For untracked files 

You can use `.gitignore` file to add glob patterns of files to be ignored by Git.

```
*.log
**/everything-over/
everything-under/**
!everything-under/excluding-rule
```

You can also apply global rules defined in some gitignore global file

```
git config --global core.excludesfile ~/.gitignore_global
```

You can also define personal ignore patterns for a particular repository in a special file at `.git/info/exclude`. These are not versioned, and not distributed with your repository.

### Commiting an ignored file 

```
git add -f FILENAME
```

## For tracked files

To prevent tracked file from being listed as modified when changed 

```
git update-index --assume-unchanged FILENAME

```
### Untracking 

If you already have a file checked in, and you want to ignore it, Git **will not** ignore the file if you add a rule later. In those cases, you must untrack the file first, by running the following command in your terminal:

```
git rm --cached FILENAME
```
`--cached` will not delete file from working directory.


---

https://www.atlassian.com/git/tutorials/gitignore
https://help.github.com/articles/ignoring-files/