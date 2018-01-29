# Removing files from history 

Five possible options:

* Amending commits
* Hard resets (possibly plus a rebase)
* Non-interactive rebase
* Interactive rebases
* Filtering branches

## Amending commits

```
git rm <FILE>
git commit --amend --no-edit
```

## Hard reset 

```
git reset --hard HEAD^
```

or possibly (when you want to amend some commit from history)

```
git checkout -b temp <SHA>

git rm <file>
git commit --amend --no-edit

git rebase --preserve-merges --onto temp <old-commit> master
```

## Non-interactive rebase 

```
git branch temp <parent-commit>

git rebase --preserve-merges --onto temp <commit-to-remove> master

git rebase --preserve-merges --onto temp <commit-to-remove> master
```

## Interactive rebases 

```
git rebase --interactive <commit-to-amend-or-remove>~
```

then mark commit you want to amend with `edit`, when rebasing stops 

```
git rm <file>
git commit --amend --no-edit
git rebase --continue
```

## Removing file from history

```
git filter-branch --force --index-filter \
'git rm --cached --ignore-unmatch <FILE>' \
--prune-empty --tag-name-filter cat -- --all
```

This will: 
* Force Git to process, but not check out, the entire history of every branch and tag
* Remove the specified file, as well as any empty commits generated as a result
* Overwrite your existing tags

After doing that you will have to force push all branches as well as tags. 

---

https://stackoverflow.com/questions/307828/completely-remove-file-from-all-git-repository-commit-history

https://help.github.com/articles/removing-sensitive-data-from-a-repository/