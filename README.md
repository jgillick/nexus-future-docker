# Nexus-Future in Docker
A simple demo running the nexus-future Hello World app in a docker container.

## Instructions

Install [docker](https://docs.docker.com/install/), then:

```bash
docker-compose build
docker-compose up -d
```

Then run:

```base
docker-compose ps
```

If all went well, you should see output like this:

```
           Name                          Command               State           Ports
---------------------------------------------------------------------------------------------
nexus-future-docker_db_1      docker-entrypoint.sh --def ...   Up      3306/tcp, 33060/tcp
nexus-future-docker_nexus_1   docker-entrypoint.sh npm r ...   Up      0.0.0.0:4000->4000/tcp
```

Then you should be able to go to http://localhost:4000/
