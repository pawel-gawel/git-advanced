## Plumbing - rev-list

```
git rev-list --max-parents=0 HEAD
```

Finds first commit reachable from HEAD.

```
git rev-list --all
```

Returns all commits hashes. Useful as expanded subcommand whenever you want to perfom operation on all commits.
