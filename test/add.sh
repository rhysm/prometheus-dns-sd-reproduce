#!/bin/bash

for (( i=1; i<=$1; i++ ))
do
    ETCDCTL_API=3 etcdctl --endpoints=http://10.2.50.2:2379 put /skydns/lan/test/dc/abcdefghijklmnopqrstuvwxyz/node$i {\"host\":\"10.1.1.$i\"}
    ETCDCTL_API=3 etcdctl --endpoints=http://10.2.50.2:2379 put /skydns/lan/test/dc/abcdefghijklmnopqrstuvwxyz/nodeexporter/node$i \{\"host\":\"node$i.abcdefghijklmnopqrstuvwxyz.dc.test.lan\",\"port\":9100\}
    ETCDCTL_API=3 etcdctl --endpoints=http://10.2.50.2:2379 put /skydns/lan/test/dc/abcdefghijklmnopqrstuvwxyz/haproxyexporter/node$i \{\"host\":\"node$i.abcdefghijklmnopqrstuvwxyz.dc.test.lan\",\"port\":9101\}
done