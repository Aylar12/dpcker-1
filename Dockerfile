FROM alpine
RUN apk add --no-cache nodejs npm
COPY . /app
WORKDIR /app
CMD [ "node","nodex.js"]