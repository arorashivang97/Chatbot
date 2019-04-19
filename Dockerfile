<<<<<<< HEAD
FROM node:8

ADD ./messenger-webhook /code

WORKDIR /code

RUN npm install

EXPOSE 1337

CMD [ "node", "index.js" ]
=======
FROM node:7.8-slim

# app workdir
WORKDIR /app

# copy app dependencies
COPY package.json ./

# install dependecies
RUN npm install -g mocha mocha-jenkins-reporter
RUN npm --allow-root install

# build app source code
COPY . ./

# runtime configs
ENTRYPOINT ["sh","./entrypoint.sh"]
>>>>>>> shabaz
