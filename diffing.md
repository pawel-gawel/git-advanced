# Diffing

Default behviour is `diff git -p`, which generates patch that you can redirect to file.

```
git diff --name-only
```

Show only names of changed files.

```
git diff --staged
```

Shows diff of staged changes.

```
git diff HEAD
```

Show all (staged and unstaged) changes.


```
git diff -- file.name
```

Show diff only for single file.

```
git diff --stat
```

Show files modification status.


```
git diff <blob> <blob>
```

It can also diff between blobs.

```
git diff --name-only --diff-filter=U
```

List conflicted files.

--- 

https://git-scm.com/docs/git-diff