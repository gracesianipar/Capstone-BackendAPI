FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

COPY ./scalers /app/scalers

EXPOSE 8080

CMD ["node", "server.js"]
