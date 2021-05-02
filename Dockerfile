FROM node:14.16.1-alpine3.13
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8085
CMD ["node", "app.js"]