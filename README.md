# Redis-Sentinel Docker-Compose

An example setup for using Redis Sentinel with Docker Compose.

For more information and an explanation, see: https://www.developers-notebook.com/development/using-redis-sentinel-with-docker-compose/

# Topology

![Redis Sentinel - Topology](redis-sentinel.png)

# Deploy
## One Server

```
export REDIS_MASTER_IP=172.16.7.78     # IP Master server, for setup slaveof "in development set value to 'master'"
export SENTINEL_IP=172.16.7.78         # IP Docker host from Slave server, for announce-ip
```

Command to deploy in one server or development

```
docker compose -f docker-compose.dev.yml up -d
```

## Multi Server

Minimum 3 Server, 1 for Master and 2 for slave.

# Redis Master

```
export REDIS_MASTER_IP=172.16.3.179     # IP Docker host from Master server
```

Command to deploy master

```
docker compose -f docker-compose.master.yml up -d
```

# Redis Slave

```
export REDIS_MASTER_IP=172.16.3.179     # IP Master server, for setup slaveof
export SENTINEL_IP=172.16.4.22         # IP Docker host from Slave server, for announce-ip
```

Command to deploy slave

```
docker compose -f docker-compose.slave.yml up -d
```

# Redis UI

If you want deploy with Redis UI, can add `-f docker-compose.ui.yml` in your docker compose command.

Dashboard can be accessed by the follow url
- http://localhost:7843/

After accessing the page go to connect -> sentinels-setup configuration
