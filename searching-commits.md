# Searching - commits

#### Search in all branches

```
git log --all
```

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

#### Online rich output format

```
git log --oneline --decorate
```