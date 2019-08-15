FROM blockmason/nodejs:12.6.0

RUN yarn add ganache-cli@6.6.0

ENV \
  TCP_PORT=8545 \
  EVM_VERSION=petersburg

COPY . /docker/project

ENTRYPOINT ["/docker/project/docker-entrypoint.sh"]
