#!/bin/bash

RESTARTER_DIR=`pwd`
echo $RESTARTER_DIR
sed -i "s#REPLACE_ME#$RESTARTER_DIR#g" elasticsearch-restarter.conf
sudo cp elasticsearch-restarter.conf /etc/init && sudo ln -s  /etc/init/elasticsearch-restarter.conf /etc/init.d/elasticsearch-restarter
