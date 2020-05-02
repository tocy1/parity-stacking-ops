FROM rust

# Set the working directory.
WORKDIR /usr/src/app
COPY alice.sh .
RUN chmod +x alice.sh
RUN chmod 777 alice.sh
#Install all dependecies
RUN curl https://getsubstrate.io -sSf | bash -s -- --fast
#Clone the Substrate Node Template (version v2.0.0-alpha.5).
RUN git clone -b v2.0.0-alpha.5 --depth 1 https://github.com/substrate-developer-hub/substrate-node-template
# Load settings into the current shell script if you can't use rustup command
#RUN source /usr/local/cargo/env
RUN ls /usr/local/cargo
RUN cat /usr/local/cargo/env
RUN export PATH="/usr/local/cargo/bin:$PATH"
# Update Rust
RUN rustup update nightly
RUN rustup update stable

# Add Wasm target
RUN rustup target add wasm32-unknown-unknown --toolchain nightly
RUN cd substrate-node-template/ && git checkout -b my-first-substrate-chain && cargo build --release
CMD [ "./alice.sh"]