#!/bin/bash
cd fonts/
rm -f *.{woff,woff2}

for f in *.ttf; do
echo $f;
  npx glyphhanger --LATIN --formats=woff2,woff --subset=$f
done

# Remove "-subset" suffix
for f in *.{woff,woff2}; do
  mv "$f" "`echo $f | sed 's/-subset//'`"
done
