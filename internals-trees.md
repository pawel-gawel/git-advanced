# Git internals - trees

Every commit has reference to `tree` object which holds working directory structure. It has references to all subtrees (subdirectories) and blobs (files) inside of that directory.

Let's call out one of the earlier commits of this repository - hash `c653518`.

To print what information this commit carries, run

```
git cat-file -p c653518
```

The output should be 

```
tree a4e54111dccccacce9b1678cb74be6e5c67cb30f
parent ee490e99263a409348854233d11ba84718448a79
author Gadabout <gadabout.code@gmail.com> 1515947386 +0100
committer Gadabout <gadabout.code@gmail.com> 1515947631 +0100

blobs
```

First line holds sha of tree object that we are looking for. To check type of this object, go with

```
git cat-file -t a4e5411
```

This tree object contains information about working directory structure at the time of creation of this commit.

We can print tree contents using 

```
git cat-file -p a4e5411
```

Looking at the output of this command 

```
100644 blob a69a4fb1012e42f06161fdd969931288162ae8e6    README.md
100644 blob 376ddd80e9e03f576b5d97fe76488a83318046c3    bisect.sh
100644 blob dabfc1c8bbdc4a85bc1c259567d882753430a6c5    blobs.sh
100644 blob 13e5635dd9679359cb61c4d767ee73987ff1460d    change-commit-author.sh
100644 blob a46b61a90cbd9ada9b66cefbbd1cc1d8758d344c    mark-file-as-binary.sh
100644 blob eb49783fcf282741adcf18338b82cc8bd6ac0fc5    rerere.sh
100644 blob 4f61207ef6d46f0a5cf8da30505a4374ae25f7b4    submodules.sh
```

we can see that tree object is responsible for keeping relevant information about what files are part of this tree, in which blobs their content was saved and what are permissions of these files. They would also be references to tree objects if we would have any subdirectories inside working directory.