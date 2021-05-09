FROM node:14-buster-slim

RUN npm install -g @aws-amplify/cli
RUN mkdir /app

COPY ./entrypoint.sh /usr/bin/

WORKDIR /app

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
