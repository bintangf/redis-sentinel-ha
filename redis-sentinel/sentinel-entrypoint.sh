#!/bin/sh
 
sed -i "s/\$REDIS_MASTER_IP/$REDIS_MASTER_IP/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_QUORUM/$SENTINEL_QUORUM/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_DOWN_AFTER/$SENTINEL_DOWN_AFTER/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_FAILOVER/$SENTINEL_FAILOVER/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_IP/$SENTINEL_IP/g" /redis/sentinel.conf
sed -i "s/\$SENTINEL_PORT/$SENTINEL_PORT/g" /redis/sentinel.conf
 
redis-server /redis/sentinel.conf --sentinel