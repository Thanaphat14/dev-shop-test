FROM node:14-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

RUN npm install express body-parser mysql2 ejs

COPY . .

EXPOSE 3000

CMD ["node", "app.js"]