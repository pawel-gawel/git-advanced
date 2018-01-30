# Bare repositories 

Repositories created with `git init --bare` are called bare repos. They are structured a bit differently from working directories. First off, they contain no working or checked out copy of your source files. And second, bare repos store git revision history of your repo in the root folder of your repository instead of in a .git subfolder. Note… bare repositories are customarily given a `.git` extension.

To init a bare repo

```
git init --bare
```

To clone repo as bare

```
git clone --bare
```

---

http://www.saintsjd.com/2011/01/what-is-a-bare-git-repository/