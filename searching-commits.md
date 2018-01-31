# Searching - commits

#### Search in all branches

```
git log --all
```

#### Show statistics of every commit found

```
git log --stat
```

This generates diffstat fore each commit in command output.

#### Search within commit history for some pattern

```
git log --grep somePattern
```

#### Search for author 

```
git log --author=name
```

#### Search in timespan

Git is really good in understanding different forms of time strings.

```
git log --since="2 days"
```

#### Search for differences whose patch text contains changed lines matches <regexp>

```
git log -G<regex>
```

#### Oneline rich output format

```
git log --oneline --decorate
```

Remember about `--graph`

#### Changes to specific file, even if renamed

```
git log --follow -p -- <file_path>
```

#### Group commits by authors and title 

```
git shortlog
```