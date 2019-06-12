# MFBot-Terminal

## About

Dockerized Version for [MFBot-Terminal](https://www.mfbot.de)

Image-Version is based on the MFBot Version (see <https://mfbot.de/downloads)>

## Usage

Use the example docker-compose.yml to build the image yourself
Comment the build array to use docker-hub.

Run via docker run:

```sh
docker run tekook/mfbot-terminal -v ./data:/data
```

./data must contain your Acc.ini and will contain all database and log files of the bot.

### Deployment via Docker-Compose

```yml
version: "3.5"

services:
  bot:
    image: tekook/mfbot-terminal
    volumes:
      - ./data:/data
```
