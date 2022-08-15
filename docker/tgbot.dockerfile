FROM alpine

ENV PACKAGES "build-dependencies build-base gcc cmake make git libsodium opus ffmpeg binutils openssl openssl-dev zlib-dev boost boost-dev curl-dev"

RUN apk update && \
	apk add --no-cache --virtual ${PACKAGES}

### reo7sp/tgbot-cpp ###

WORKDIR /usr/src/tgbot-cpp

COPY tgbot-cpp/include include
COPY tgbot-cpp/src src
COPY tgbot-cpp/CMakeLists.txt .

RUN cmake . && \
    make -j$(nproc) && \
    make install && \
    rm -rf /usr/src/tgbot-cpp/*
