# Searching - files

#### To find specific pattern withing the tracked files and print all lines maching that pattern

```
git grep somePattern
```

`-n` will show line number where pattern was found. 

`-l` shows only the names of files that contain (or do not contain) matches.

`-c` will show how many matches were find in each file instead of shouwing every pattern occurence.

#### Search within files in current directory that are not managed by Git

```
git grep --no-index somePattern
```

#### To search within selected files (i.e. using globbing pattern)

```
git grep somePattern -- *.md     # all files with md extension
```

#### Search in some particular commit 

```
git grep somePattern SHA
```

#### Search files that contain multiple patterns in the same line 

```
git grep -e firstPattern --and -e secondPattern
```

#### Search files that contain multiple patterns (not neccesarily in one line)

```
git grep --all-match -e firstPattern -e secondPattern
```

#### Search within whole history 

One can pass list of hashes as search base

```
git grep somePattern $(git rev-list --all)
```

#### Show file at certain commit 

```
git show <hash>:<file>

```

---

https://git-scm.com/docs/git-grep

http://travisjeffery.com/b/2012/02/search-a-git-repo-like-a-ninja/