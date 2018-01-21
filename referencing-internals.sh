#!/bin/bash

git cat-file -p master
# same as
git cat-file -p master^{commit}

git cat-file -p master^{tree}
