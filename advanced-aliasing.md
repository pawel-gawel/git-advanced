# Advanced aliasing 

You can shell out (escape to a shell) within alias defined command - using `!` (bang).

```
git config alias.list-files '!ls -la'
```

### Whipe all merged local branches 

```
alias.branch-wipe=!git branch --merged | grep -E "feature|bugfix" | xargs -L1 git branch -d
```

## Passing parameters to aliases

```
my_alias = "!f() { 〈your complex command〉 }; f"
```

### Add file to .gitignore

```
git config alias.ignore '!f() { echo $1 >>.gitignore; }; f'
```

--- 

https://www.atlassian.com/blog/git/advanced-git-aliases
