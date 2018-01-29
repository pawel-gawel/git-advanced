# Branches

Branch pointers are to be found in `.git/refs/heads`

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
```

## Push branch to remote

```
git push origin -u HEAD
```

To make it even simpler 

```
git config --global push.default current
```

Then you can go with 

```
git push -u
```

## Delete branches

Local

```
git branch -d 
```

Remote 

```
git push origin :<BRANCH>
```

## Find best common ancestor 

```
git merge-base <BRANCH_A> <BRANCH_B>
```

