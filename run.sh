#!/bin/bash

export $(cat .env | xargs)

docker stop telegram-support-bot
docker rm telegram-support-bot

docker build -t telegram-support-bot .

docker run -d \
-e TELEGRAM_TOKEN \
-e TELEGRAM_SUPPORT_CHAT_ID \
--name telegram-support-bot telegram-support-bot:latest