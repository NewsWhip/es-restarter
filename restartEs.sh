#!/bin/bash

MAX_MEM=85

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

while :
do
  JVM_MEMORY=$(python $DIR/checkJvmMem.py)
  if [ "$JVM_MEMORY" -gt "$MAX_MEM" ]
  then
    echo "[`date`] High memory!!! RESTARTING NODE"
    sudo service elasticsearch-es restart
  else
    echo "[`date`] Memory looks okay at $JVM_MEMORY%"
  fi
  sleep 5
done

