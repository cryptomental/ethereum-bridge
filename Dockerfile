FROM node:9.2.0

COPY ./ /ethereum-bridge

WORKDIR /ethereum-bridge

RUN npm install

ENTRYPOINT ["node", "bridge"]