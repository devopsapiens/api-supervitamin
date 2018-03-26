#SEE https://github.com/keymetrics/docker-pm2
#FROM keymetrics/pm2:latest-alpine
FROM node:alpine

# Bundle APP files
COPY src src/
COPY lib lib/

COPY package.json .
COPY pm2.json .

# Install app dependencies
ENV NPM_CONFIG_LOGLEVEL warn
RUN npm install --production

# Show current folder structure in logs
RUN ls -al -R
EXPOSE 3000

#CMD ["pm2-runtime", "start", "pm2.json", "--web"]
CMD [ "npm","start" ]