# TODO - Rebasing


## Basic rebase 

This will rebase branch `feature` ON TOP OF `master`. 
It will take each and every commit that is reachable from `feature` and not `master` and replay it on top of `master`.

```
git checkout feature
git rebase master
```

## Two argument --onto

         Before                           After
    A---B---C---F---G (branch)        A---B---C---F---G (branch)
             \                                         \
              D---E---H---I (HEAD)                      E---H---I (HEAD)

```
git rebase --onto G D
```

Rebase the commit reachable from HEAD whose parent is D on top of G.

```
git rebase onto <new-parent> <old-parent>
```

Very handy for removing commits.


## Three argument --onto

You can move commits with `<oldparent>` reachable from `<until>` onto `<newparent>`

```
git rebase --onto <newparent> <oldparent> <until>
```

## Interactive rebase 

```
git rebase -i <starting-from>
```

Adding new commits you can add one of rebase interactive keywords in beginning of commit message
(`sqash`, `fixup`, etc) and then go with `git rebase -i`

With interactive rebase you can change commit order.


## Rebase on pull

```
git pull --rebase
```

Can be set as default

```
git config pull.rebase true
```


---

https://stackoverflow.com/questions/29914052/i-cant-understand-the-behaviour-of-git-rebase-onto