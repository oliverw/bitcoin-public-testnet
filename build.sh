#!/bin/bash

# build image
docker build -t coinfoundry/bitcoin-public-testnet .
docker push coinfoundry/bitcoin-public-testnet
