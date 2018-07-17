# MySqlDocker
Docker-Compose and init script to create a docker container with volumes and running a script on the first time.

The script that will be executed on the container creation are in :

````
/init/data/data-dump.sql

````
You cna use this script to set adicional users and their permissions and also the db to be used.

The container is created with default values for the:

- MYSQL_ROOT_PASSWORD - Docker-compose file;
- MYSQL_DATABASE - Docker-compose file;

The container exposes the 3306 Port and acept connections from any host. THIS SHOULD ONLY BE USED FOR DEV ENV, for prodction please take some security measures.

Run:

```
docker-compose up -d 
```

**NOTE** since the volume is link to local folder in order to get persistency, if needed to change something on init script please delete the /data folder.
