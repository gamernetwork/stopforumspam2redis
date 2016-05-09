#!/bin/bash

#src="curl http://www.stopforumspam.com/downloads/listed_ip_7.zip"
src="cat listed_ip_7.zip"
redis="redis-cli"
key="stopforumspam_ip_7"

$redis del $key
$src | funzip | python redischunker.py | $redis --pipe
$redis scard $key
