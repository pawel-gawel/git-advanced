# Internals - commits 

```
echo 'My commit message' | git commit-tree TREE_SHA
# or 
echo 'second commit' | git commit-tree TREE_SHA -p COMMIT_PARENT_SHA
```

```
git cat-file -p COMMIT_SHA
```