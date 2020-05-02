#!/bin/bash
./target/release/node-template \
  --base-path /tmp/bob \
  --chain local \
  --bob \
  --port 30334 \
  --ws-port 9945 \
  --rpc-port 9934 \
  --telemetry-url $SUBSTRATE_TELEMETRY_URL \
  --validator \
  --bootnodes /ip4/127.0.0.1/tcp/$ALICEPORT/p2p/$(cat /usr/lib/substrate/file )