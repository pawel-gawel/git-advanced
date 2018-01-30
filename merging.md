# Merging

strategies: fast forward, recursive (3-way), octopus
 —squash, —ff, —no-ff, —ff-only


## Strategies - based on GitHub

```
--no-ff
```
Always create a new merge commit and update the target branch to it, even if the source branch is already up to date with the target branch.

```
--ff-only
```
If the source branch is out of date with the target branch, reject the merge request. Otherwise, update the target branch to the latest commit on the source branch.

```
--squash --ff-only
```
If the source branch is out of date with the target branch, reject the merge request. Otherwise, combine all commits into one new non-merge commit on the target branch.

```
--ff
```
If the source branch is out of date with the target branch, create a merge commit. Otherwise, update the target branch to the latest commit on the source branch.

```
--squash
```
Combine all commits into one new non-merge commit on the target branch.


---

GitHub repo Settings -> Pull Requests