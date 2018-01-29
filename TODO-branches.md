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
git merge-base <BRANCH> <BRANCH>
```

