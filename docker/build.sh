#!/bin/bash

git clone https://github.com/reo7sp/tgbot-cpp

docker build -t botwayorg/tgbot-cpp . -f tgbot.dockerfile

docker push botwayorg/tgbot-cpp

rm -rf tgbot-cpp
