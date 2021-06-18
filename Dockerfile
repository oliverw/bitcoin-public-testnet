FROM debian:10-slim

ADD https://bitcoincore.org/bin/bitcoin-core-0.21.1/bitcoin-0.21.1-x86_64-linux-gnu.tar.gz /tmp/

RUN cd /tmp && tar xvf bitcoin*.tar.gz && cp -r /tmp/bitcoin*/bin/* /usr/bin && \
    rm -rf /usr/share/man/* /usr/share/groff/* /usr/share/info/* /var/cache/man/* /tmp/* /var/lib/apt/lists/*

EXPOSE 8332
WORKDIR /tmp
ENTRYPOINT bitcoind -server -testnet -datadir=/data -printtoconsole -rpcuser=user -rpcpassword=pass -rpcport=8332 -rpcbind=0.0.0.0 -rpcallowip=0.0.0.0/0 $EXTRA_OPTIONS
