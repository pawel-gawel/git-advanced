# Dangling objects

These are objects that are not reachable from any of the reference nodes..

They can happen whenever you add it "by hand" using plumbing `git hash-object -w` and not use it as a part of referenced commit (dangling blobs). You will get those also as an outcome of different git operations, like `rebase`, `cherry-pick` etc. 

## List of dangling objects

You can list dangling commits with 
```
git fsck
``` 

This command verifies the connectivity and validity of the objects in the database.

## Cloning repo with dangling blobs

When you create dangling blob like 

```
echo "what is up" | git hash-object -w --stdin
```

and then clone this repo to some other directory - you will get this git object existing in cloned repo.

On the other hand if you push repo with dangling object to remote - git will tell you that all is up to date and will not push dangling object to remote. So when you clone it on your local machine you will not see this object on your local machine.

This is because `git push` will update remote refs along with associated objects. What that means is you cannot push anything to remote that cannot be resolved as a part of some graph which has ref as its root. That means that what you are pushing is actually some reference that is being expanded to list of commits. 
