# Referencing internals 

## Get referenced commit structure

```
git cat-file -p master
```

same as

```
git cat-file -p master^{commit}
```

## Get referenced commit tree

```
git cat-file -p master^{tree}
```