#!/bin/bash

git clone https://github.com/pachev/pachev_ftp.git;
cwd=$(pwd)
mv env/server/Cargo.toml pachev_ftp/ftp_server/Cargo.toml
cd pachev_ftp;
cd ftp_server && cargo build --release && mv target/release/ftp_server ../../env/server/;
cd $cwd/env/server/ && ./ftp_server
