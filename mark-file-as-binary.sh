#!/bin/bash

# This will add diff attribute to globbed pattern

echo '*.odt diff=odt' >> .gitattributes


# This will add odt diff category to .git-config file
# Should be .git/config but changed that for safety reasons
# so jus copy that by hand to your .git/config file

cat <<EOT >> .git-config 
[diff "odt"]  
  binary = true
  textconv = odt2txt
EOT


# Now git will know that odt files are binary, so it would not show diff to you.
# But as long as you specify tool that can render this category of files, 
# git will use that tool to render the content and then it will show you the difference.

