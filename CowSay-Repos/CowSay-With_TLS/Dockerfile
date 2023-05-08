FROM node:19-alpine3.16
LABEL cowsay.version=v2
ENV PORT=8080
RUN mkdir -p /var/node
COPY src/ /var/node/
WORKDIR /var/node
RUN npm install
ENTRYPOINT ["npm", "start"]
