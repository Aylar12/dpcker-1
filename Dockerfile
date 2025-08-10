FROM alpine
RUN apk add --no-cache nodejs npm
WORKDIR /app
COPY package*.json ./
RUN npm install figlet
COPY . .
CMD ["node", "nodex.js"]