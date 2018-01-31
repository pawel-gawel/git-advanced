# Reverting 

You do that whenever you have a public commit(s) you want to revert.

You can do revert of a revert.

`-n` will revert but not commit - only updates index and working tree.

You can revert number of commits 

```
git revert -n master~5..master~2
```

You can revert 

## Reverting a merge 

You have to point to which parent to revert.

```
git revert -m 1
```

---

https://git-scm.com/docs/git-revert