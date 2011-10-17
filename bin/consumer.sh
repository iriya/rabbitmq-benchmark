#!/bin/bash

dir=`dirname $0`

JAVA=$JAVA_HOME/bin/java
CLASSPATH=$dir/../build
for i in $dir/../lib/*.jar; do
  CLASSPATH="$CLASSPATH":"$i"
done

$JAVA -cp info.jeffkit.rabbitmq.benchmark.Consumer $@
