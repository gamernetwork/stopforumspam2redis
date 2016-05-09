#!/bin/bash

redis_host=$1

src="curl http://www.stopforumspam.com/downloads/listed_ip_7.zip"
redis="redis-cli -h $redis_host"
key="stopforumspam_ip_7"

$redis del $key
$src | funzip | python redischunker.py | $redis
$redis scard $key

