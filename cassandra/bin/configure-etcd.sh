#!/bin/sh
python -c 'print [str(((2**64 / 3) * i) - 2**63) for i in range(3)]'

etcdctl set /configurations/cassandra/clustername wlcore
etcdctl set /configurations/cassandra/seeds 10.0.0.205,10.0.0.11,10.0.0.250
etcdctl set -- /configurations/cassandra/node1/token -9223372036854775808
etcdctl set -- /configurations/cassandra/node2/token -3074457345618258603
etcdctl set /configurations/cassandra/node3/token 3074457345618258602

