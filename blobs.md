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

# blob denotes type of object
# 12 is content's byte lenth: echo "Hello World" | wc -c
# \0 is a null byte - -e allows to use it in desired way

```echo -e "blob 13\0Hello, World" | shasum```

_Hash will be 3fa0d4b98289a95a7cd3a45c9545e622718f8d2b_

You can also manually hash object in git, not using procelain add. Command below will generate the same hash as one above

```echo "Hello, World" | git hash-object -w --stdin```

