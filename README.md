Want to work for Gamer Network? [We are hiring!](http://www.gamesindustry.biz/jobs/gamer-network)

# stopforumspam2redis

Import the stopforumspam.com IP database into a redis set for easy lookups

##

```
./update.sh <my_redis_server>
```

Note: DB downloads are rate limited to 2 a day - put this on a daily cron.

Look up an IP

```
redis-cli -h <my_redis_server> SISMEMBER stopforumspam_ip_7 <some.ip.address.yo>
```

Check DB has sane number of values

```
redis-cli -h <my_redis_server> SCARD stopforumspam_ip_7
```
