# Cherry-picking

Means to re-apply changes from selected commit.

This requires your working tree to be clean.

```
git cherry-pick -x SHA
```

Will append line that says "(cherry picked from commit …​)" to the original commit message while recording a commit.

Cherry-picking will allo `--ff` if possible.


#### Strategy with option

```
git cherry-pick --strategy=recursive -Xtheirs
```

#### Apply all ancestors of master

```
git cherry-pick ..master
```

## Git cherry

```
git cherry [-v] [<upstream> [<head> [<limit>]]]
```

Determine whether there are commits in `<head>..<upstream>` that are equivalent to those in the range `<limit>..<head>`.

In simple words, let's check if we have any commits on `topic` that are yet to be applied to `master`.

```
git cherry -v master topic
```


---

https://git-scm.com/docs/git-cherry-pick

https://git-scm.com/docs/git-cherry