FROM node:12-alpine

WORKDIR /usr/src/app

RUN apk update && apk add python make g++

RUN npm install -g node-gyp

COPY . .

RUN npm install