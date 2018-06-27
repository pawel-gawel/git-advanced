# Internals - commits 

```
echo 'My commit message' | git commit-tree TREE_SHA
# or 
echo 'second commit' | git commit-tree TREE_SHA -p COMMIT_PARENT_SHA
```

To see type of particular object
```
git cat-file -t SHA
```

To see contents of particular object
```
git cat-file -p SHA
```