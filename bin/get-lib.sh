#!/bin/bash

echo "downloading $1 ..."
client=${1##*/}
ver=${client%%.tar.gz}
dir=`dirname $0`

wget $1 -qO /dev/stdout | tar zx
cp $ver/rabbitmq-client.jar $dir/../lib/
cp $ver/commons-*.jar $dir/../lib/
rm -rf $ver
