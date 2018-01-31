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
git format-patch AGAINST_BRANCH --stdout > some.patch
```

## Applying patch

First take a look at changes in patch 

```
git apply --stat some.patch
```

Then test your patch, looking for possible errors

```
git apply --check some.patch
```

Now you can apply patch 

```
git am --signoff < some.patch
# or 
git apply some.patch
```

--- 

https://www.devroom.io/2009/10/26/how-to-create-and-apply-a-patch-with-git/