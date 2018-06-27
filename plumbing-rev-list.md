## Plumbing - rev-list

Finds first commit reachable from HEAD.
```
git rev-list --max-parents=0 HEAD
```

Returns all commits hashes. Useful as expanded subcommand whenever you want to perfom operation on all commits.
```
git rev-list --all
```

