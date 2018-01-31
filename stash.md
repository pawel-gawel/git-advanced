# Stash

By default git stash ignores ignored files and only stashes changes to files that are tracked by Git. However, you can invoke git stash with the `--all` option to stash changes to ignored and untracked files as well.

```
git stash --all
```

#### Stash with message 

```
git stash save "My message"
```

#### List Stash

```
git stash list
```

#### Apply single stash

```
git stash apply stash@{n}
```

#### Apply single file from choosen stash

```
git checkout stash@{n} -- FILE
```

#### Pop and apply stash from stack

```
git stash pop
```

#### Branch from stash

```
git stash branch <name> [stash@{n}]
```

#### Stash untracked files

```
git stash -u
```

#### Show stash

```
git stash show
# or with full diff
git stash show -p
```