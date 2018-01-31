# Checking out code

Whenever you checkout to commit, you are in _detached HEAD_ state.

You can create new branch and checkout to it

```
git checkout -b new-branch
```

You can bring back single file from choosen commit

```
git checkout [SHA] -- FILE 
```

To checkout quickly to previous branch

```
git checkout -
```

Grab a single file from stash

```
git checkout stash@{n} -- FILE
```

Restore deleted file 

```
git checkout SHA^ -- FILE
```

Checkout branch with any history 

```
git checkout --orphan BRANCH
```

Checkout a commit prior to a day ago

```
git checkout master@{yesterday}
```

---

https://github.com/git-tips/tips