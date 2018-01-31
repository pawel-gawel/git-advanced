# Patching 

## Generate patch 

First go to branch from where you want patches to be generated against some other branch

```
git checkout feature-branch
```

To generate files - each as a patch for single commit

```
git format-patch AGAINST_BRANCH
```

To put all changes into single patch

```
git format-patch AGAINST_BRANCH --stdout > fix_empty_poster.patch
```