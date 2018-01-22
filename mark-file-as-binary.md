# Mark file as binary

This will add diff attribute to globbed pattern and create new file class.

```
echo '*.odt diff=odt' >> .gitattributes
```

## Configuring defined file class

This will add `odt` diff category to `.git/config` file

```
cat <<EOT >> .git/config 
[diff "odt"]  
  binary = true
  textconv = odt2txt
EOT
```

Now git will know that `odt` files are binary, so it would not show diff to you.
But as long as you specify tool that can render this category of files, git will use that tool to render the content and then it will show you diff using tool specified.

