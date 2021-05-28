# First instruction includes building the app in image

FROM node:16-alpine

WORKDIR /usr/src/app
COPY . .
RUN npm i