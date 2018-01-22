# Blobs 

Everything added to git (files, data written from stdin etc) is kept as so called blob.

Blobs (together with trees and commits) are kept in `.git/objects/` directory.

To symulate how git stores files, let's create a file 

```echo "Hello World" > hello.txt```

Now look into objects directory

```ls -l .git/objects```

Now, stage new file and take a look again

```
git add hello.txt
ls -l .git/objects
```

There is a new directory with new file 
```.git/objects/3f/a0d4b98289a95a7cd3a45c9545e622718f8d2b```

Git hashed new staged file and wrote it as a blob.
You can find this hash by doing the same thing manually that git does.

```echo -ne "blob 12\0Hello, World" | shasum -a 1```

> where blob denotes type of object
> `12` is content's byte length: echo "Hello World" | wc -c
> `\0` is a null byte
> option `-e` allows to use null byte in desired way
> option `-n` prevents new line character at the end of string

Resulted hash will be `1856e9be02756984c385482a07e42f42efd5d2f3`

You can also manually hash object in git, not using procelain add. Command below will generate the same hash as one above

```echo -n "Hello, World" | git hash-object --stdin```

If you use `git hash-object -w` it will write it as blob to `.git/objects` directory. This way one would create so called *dangling blob*.
