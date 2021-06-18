docker run -it -d -p 8332:8332 -v d:\blockchain\bitcoin-testnet:/data -e "EXTRA_OPTIONS=-prune=1000" coinfoundry/bitcoin-public-testnet
