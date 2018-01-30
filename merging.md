# Merging

## Strategies

One can select desired strategy with `-s` option.

Some strategies can also take their own options with `-X<option>`. This can be consumed by `git merge` or `git pull`.

#### resolve

Safe and fast strategy to do  a 3-way merge between two heads only.

```
git merge -s resolve <BRANCH> <BRANCH>
```

#### recursive

Merges two heads only; this can detect and handle merges involving renames. Proves to generate less merge conflicts. 

```
git merge <BRANCH> <BRANCH>
# or 
git merge -s recursive <BRANCH> <BRANCH>
```

This is the default merge strategy.

**Recursive** strategy options:

`ours` - forces conflicting hunks to be auto-resolved cleanly by favoring 'our' version. Changes from the other tree that do not conflict with our side are reflected to the merge result (NOT to be mistaken with **ours** merge strategy)

`theirs` - opposite to `ours`

`patience` - use this when the branches to be merged have diverged wildly. Spends a little extra time to avoid mismerges that sometimes occur due to unimportant matching lines (e.g., braces from distinct functions)

*and more*

Recursive merge usage example

```
git merge -s recursive -Xours elses-branch
```

#### osctopus 

```
git merge <BRANCH> <BRANCH> [<BRANCH> .. <BRANCH>]
# or 
git merge -s octopus <BRANCH> <BRANCH> [<BRANCH> .. <BRANCH>]
```

This resolves cases with more than two heads, but refuses to do a complex merge that needs manual resolution.

#### ours 

```
git merge -s ours <BRANCH> <BRANCH> [<BRANCH> .. <BRANCH>]
```

This resolves any number of heads, but the resulting tree of the merge is always that of the current branch head, effectively ignoring all changes from all other branches.

> NOT to be mistaken with `git merge -s recursive -Xours`

#### subtree

Modified recursive strategy.

### Important thing that Git documentation states

With the strategies that use 3-way merge (including the default, 'recursive'), if a change is made on both branches, but later reverted on one of the branches, **that change will be present in the merged result**; some people find this behavior confusing. It occurs because **only the heads and the merge base are considered when performing a merge**, *not* the individual commits. The merge algorithm therefore considers the reverted change as no change at all, and substitutes the changed version instead.

## Merge options

```
--no-ff
```
Always create a new merge commit and update the target branch to it, even if the source branch is already up to date with the target branch.

```
--ff
```
When the merge resolves as a fast-forward, only update the branch pointer, without creating a merge commit. This is the default behavior.

```
--no-ff
```

This is the default behaviour when merging an annotated (and possibly signed) tag.

```
--ff-only
```

Refuse to merge unless fast forward is possible.

```
--squash
```

This allows you to create a single commit on top of the current branch whose effect is the same as merging another branch.

```
--allow-unrelated-histories
```

This will allow to merge histories without common ancestor.


---

GitHub repo Settings -> Pull Requests