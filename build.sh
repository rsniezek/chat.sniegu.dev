#!/bin/bash
set -x

# configure here
ELEMENT_VERSION=v1.12.17
# end configure here

curl -fL -o element.tar.gz https://github.com/element-hq/element-web/releases/download/$ELEMENT_VERSION/element-$ELEMENT_VERSION.tar.gz

tar -xvf element.tar.gz
mv element-$ELEMENT_VERSION out
cp config/* out/
cp 404.html out/

rm element.tar.gz

# ./out is now ready.
