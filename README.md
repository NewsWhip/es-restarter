# es-restarter
Monitors heap usage and restarts nodes > 85%

### To install and run (you may consider scripting this if there's a lot 

```
ssh ELASTICSEARCH_NODE_NAME
cd ~ && git clone git@github.com:NewsWhip/es-restarter.git
cd es-restarter && ./install.sh
sudo service elasticsearch-restarter restart
```
```
