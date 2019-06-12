# MFBot-Terminal

## About

Dockerized Version for [MFBot-Terminal](https://www.mfbot.de)

## Usage

Use the example docker-compose.yml to build the image yourself
Comment the build array to use docker-hub.

Run via docker run:

```sh
docker run tekook/mfbot-terminal -v ./data:/data
```

./data must contain your Acc.ini and will contain all database and log files of the bot.

Attach to the container to do stuff with the bot :-)

 ```sh
docker attach <container_name>
```

 (Leave attach via ```CTRL-P,CTRL-Q```)

### Deployment via Docker-Compose

```yml
version: "3.5"

services:
  bot:
    image: tekook/mfbot-terminal
    volumes:
      - ./data:/data
    stdin_open: true
    tty: true
```

Note: stdin_open & tty is neccesary via compose so the shell is interactive.
