#!/bin/bash
# Purge any chain data from previous runs
# You will be prompted to type `y`
#./target/release/node-template purge-chain
#default port=30333
# Start Alice's node
# Purge any chain data from previous runs
# You will be prompted to type `y`
#./target/release/node-template purge-chain

# Start Alice's node
./target/release/node-template \
  --base-path /tmp/alice \
  --chain local \
  --alice \
  --port 30333 \
  --ws-port 9944 \
  --rpc-port 9933 \
  --telemetry-url $SUBSTRATE_TELEMETRY_URL \
  --validator | grep identity | 'awk {print $7}'>> /usr/lib/substrate/file