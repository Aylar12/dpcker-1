FROM alpine
RUN apk add --no-cache nodejs npm
WORKDIR /app
COPY package*.json ./
RUN npm install figlet
COPY . .
EXPOSE 3000
CMD ["node", "nodex.js"]