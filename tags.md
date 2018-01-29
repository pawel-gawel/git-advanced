# Tags 

All tags are kept in `.git/refs/tags/` directory.

## Annotated tags 

Those are separate objects in `.git/objects/` with tag metadata pointing at some commit object. So SHA written to `.git/refs/tags/tag-name` file will point to tag object, which in turns will point to commit object.

```
git tag -a tag-name -m "tag message"
```

## Lightweight tags

SHA in `.git/refs/tags/tag-name` file will point directly to commit object.

```
git tag tag-name -m "tag message"
```

## Listing tags 

Globbing works

```
git tag -l v1.*
```

List all tags on remote

```
git ls-remote --tags 
```

Push single tag 

```
git push origin tag-name
```


## What tag points at commit 

```
git tag --points-at <SHA>
```


---

https://git-scm.com/book/en/v2/Git-Basics-Tagging

plain vs annotated (as object with metadata)
--points-at