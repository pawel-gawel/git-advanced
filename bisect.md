# Git bisect 

Start bisecting mode with

```git bisect start```

Tell me which commit is good

```git bisect good SHA```

Tell me which commit is broken - omitting SHA would mean reference to HEAD

```git bisect bad```

Repeating those steps will norrow down search path and eventually will show you the commit that introduced a bug.
The reference `refs/bisect/bad` will be left pointing at that commit

Let's visualize that - at any point of bisecting process

```git bisect visualize```

You can always skip a commit while bisecting 

```git bisect skip```

or a bunch of those

```git bisect skip v2.5..v2.6```

## Bisect automation

To automate bisection, one can write a test script that would return exit code that would depend on that test. It could be something like - I'm looking for missing file.
NOTE: this script should not be under source control (to have it in dir regardless of where I am checked out)

```
cat <<EOT >> test.sh
#!/bin/bash

[ -e some_file_name ]
EOT
```

Run our test!

```git bisect run ./test.sh```

## Reset/stop

To stop bisecting go with 

```git bisect reset``` 

This will clean up bisection state and return to the original HEAD

## Bisect terms alternatives

Instead of using good and bad, you can use more general old and new

```
git bisect old [<rev>]
git bisect new [<rev>]
```

This command will let you know which terms you are using right now, as you cannot mix terms 

```git bisect terms```

You can also use user defined terms

```git bisect start --term-new fixed --term-old broken```



