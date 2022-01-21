# MFBot-Terminal

## About

Dockerized Version for [MFBot-Terminal](https://www.mfbot.de)

## Deployment

```sh
docker build -t c0mputern1k/mfbot-terminal:<version> .
```

## Usage

Use the example docker-compose.yml to build the image yourself
Comment the build array to use docker-hub.

Run via docker run:

```sh
docker stack deploy --compose-file docker-compose.yml sfgames
```

./data must contain your Acc.ini and will contain all database and log files of the bot.

Attach to the container to do stuff with the bot :-)

 ```sh
docker container ls | grep sfgames
docker exec -ti <container_id> bash
```

 (Leave attach via ```CTRL-P,CTRL-Q```)