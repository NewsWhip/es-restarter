import json

import requests

url = "http://localhost:9200"

resp = requests.get(url)

data = json.loads(resp.text)

nodeName = data["name"]

resp = requests.get(url + "/_nodes/" + nodeName + "/stats/jvm")

nodes = json.loads(resp.text).get("nodes")
jvmMemory = 0

for node in nodes.values():
    jvmMemory = node["jvm"]["mem"]["heap_used_percent"]


print jvmMemory
