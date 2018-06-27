# Inspect untracked files 

### List untracked files 

```
git ls-files . --exclude-standard --others
```

### Show untracked files contents 

```
cat $(git ls-files . --exclude-standard --others)
```