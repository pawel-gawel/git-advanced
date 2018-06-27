# Branches

Branch pointers are to be found in `.git/refs/heads`

## Create and checkout

```
git checkout -b BRANCH
```

With `-B` option, if branch already exists, it will reset branch to HEAD or pointed SHA

```
git checkout -B BRANCH SHA
```

## Merged branches 

```
git branch --merged [<TARGET_BRANCH>]
```

## Contains 

```
git branch --contains <COMMIT-ISH>
```

## Changes in branch B that are not in branch A

```
git log A..B
```

## Difference between branches A and B

```
git log A...B
# this command is simmetric 
git log B...A
```

## Push branch to remote

```
git push origin -u HEAD
```

To make it even simpler you can make this behavior default globally

```
git config --global push.default current
```

Then you can go with 

```
git push -u
```

## Delete branches

#### Local

```
git branch -d 
```

It will not delete not yet merged branch without `-f` or `-D` flag.
The branch must be fully merged to its upstream branch, or to HEAD if no upstream was set.

#### Remote 

```
git push origin :<BRANCH>
```

## Find best common ancestor 

```
git merge-base <BRANCH_A> <BRANCH_B>
```

## Rename branch

```
git branch -m NAME
```


--- 

https://git-scm.com/docs/git-branch