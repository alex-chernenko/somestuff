FROM node:6-alpine

COPY index.html ./
COPY server.js ./
COPY style.css ./
COPY script.js ./
COPY package*.json ./
RUN npm install

CMD ["node", "server.js"]
EXPOSE $PORT