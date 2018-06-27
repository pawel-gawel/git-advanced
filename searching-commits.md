# Searching - commits

You will often need to search for some subset of commits. Knowing about things in your toolbelt is essential. This is the very essence of using git - what should be in your interest are changes introduced between commits, validating which commits are a part of your merged work and which are not. Commong thing amongst developers is using some kinf of gui for git that will render "branches". Those branches will weave, cross, diverge and will not make much of a sense watching this dillusive image on the screen. Then those developers will start to argue on how much it is important to have your repository to be flat as a pancake. "Everything should be rebased", they will say, "we don't want to see such a complicated history graph!". You bet you don't want to see that. But not because it seems to be complicated, but because this is a wrong way to perceive git history.

The key to success with git is ability to query and limit information you fetch from the repository. If you won't go for that call of "rebase everything!" you will actually increase chances this repos history will have any value for your and your team whatsovever.

#### Most useful log variation EVER

What I often do is I check what commits my branch holds in oppositon to some other branch - usually its my feature branch in opposition to master branch. It goes like this - assuming I have my feature branch checked out

```
git log master..HEAD
```

This immediately tells me what kind of changes I've introduced developing this branch. There's where granularity comes into the picture. For this one please refer to approriate file.

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