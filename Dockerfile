FROM node:lts-alpine

WORKDIR /home/node/app

COPY --chown=node:node package*.json /home/node/app/
COPY --chown=node:node index.js /home/node/app/index.js
COPY --chown=node:node client /home/node/app/client

RUN npm install

USER node

EXPOSE 8080 3000

CMD ["node", "index.js"]

