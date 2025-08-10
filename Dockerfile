FROM alpine
RUN apk update && apk add nodejs && --no-cache figlet
COPY . /app
WORKDIR /app
CMD [ "node","nodex.js","figlet"]