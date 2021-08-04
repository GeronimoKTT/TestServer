FROM node:latest

ADD . /app/
WORKDIR /app

RUN npm install yarn -g --force
RUN yarn global add pm2
RUN pm2 install pm2-logrotate

RUN pm2 set pm2-logrotate:max_zize 50Mb

RUN yarn install
RUN pm2 startup

EXPOSE 3000

CMD ["pm2-runtime", "ecosystem.config.js"]