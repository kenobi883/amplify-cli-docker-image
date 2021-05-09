FROM node:14-buster

RUN apt-get update \
    && apt-get install --yes groff less

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64-2.2.3.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install

RUN npm install -g @aws-amplify/cli
RUN mkdir /app

COPY ./entrypoint.sh /usr/bin/

WORKDIR /app

ENTRYPOINT ["/usr/bin/entrypoint.sh"]
