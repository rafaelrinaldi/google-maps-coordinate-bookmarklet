# snippet=`cat ./dist/bookmarklet.js`
# echo $snippet
# sed 's/{{snippet}}/$snippet/g' index.tpl > index.html
# perl -pie 's/{{snippet}}/$snippet/g' index.tpl > index.html

#!/bin/sh
for line in `cat index.tpl`; do
  if [ $line == "{{snippet}}" ]; then
    cat ./dist/bookmarklet.js >> test
  else
    echo $line >> test
  fi
done
