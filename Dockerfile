FROM alpine
RUN apk update && apk add nodejs && apk add --no-cache figlet
COPY . /app
WORKDIR /app
CMD [ "node","nodex.js","figlet"]