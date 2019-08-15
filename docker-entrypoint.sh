#!/usr/bin/env bash

command_start() {
  node_modules/.bin/ganache-cli \
    --account '' \
    --port "${TCP_PORT}" \
    --hostname 0.0.0.0 \
    --gasPrice 0 \
    --gasLimit 0x700000 \
    --hardfork "${EVM_VERSION}" \
    --secure
}

case "$1" in
  start)
    command_start
    ;;
  "")
    command_start
    ;;
  *)
    exec $*
    ;;
esac
