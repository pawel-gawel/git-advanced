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
git rebase --onto <new-parent> <old-parent>
```

Take <old-parent>'s descendants and rebase them onto <new-parent>.

Very handy for removing commits. How, you say? Take this history for example

-A---B---C---D---E-

when we want to get rid of C and D, we would probably do and interactive rebase. But we can also go easy with

```
git rebase --onto B D
```

This way we are taking all commits in range from D to HEAD and replay them on top of B commit - moving the branch tip accordingly.

## Three argument --onto

You can move commits with `<oldparent>` reachable from `<until>` onto `<newparent>`

```
git rebase --onto <newparent> <oldparent> <until>
```

Looking at two argument --onto there is no that big of a change - having 3rd argument we can control the reach of commits we want to move onto new parent. Two argument --onto is really the three argument option with HEAD as a default for 3rd argument.

So this is great when you want to move some subset of one branch to another one.

---A---B---C---D---      master
    \
     E---F               feature/1
          \
           G---H--       bugfix/2

You can move `bugfix/2` specific commits only on `master` with

```
git rebase --onto master feature/1 bugfix/2
```

## Interactive rebase 

```
git rebase -i <starting-from>
```

Adding new commits you can add one of rebase interactive keywords in beginning of commit message (`sqash`, `fixup`, etc) and then go with `git rebase -i` - all operations will be done automatically.

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