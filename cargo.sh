#!/bin/bash

# 定义需要使用的docker tag
RUST_VERSION=latest


T_SHELL_PATH=$(readlink -f "$0")
T_SHELL_DIR=$(dirname "$T_SHELL_PATH")
#echo $T_SHELL_DIR
docker run -it --rm \
   --user "$(id -u)":"$(id -g)" \
  -v "${T_SHELL_DIR}/config.toml":/usr/local/cargo/config.toml \
  -v "${T_SHELL_DIR}/registry":/usr/local/cargo/registry \
  -v "$(pwd)":/usr/src/myapp \
  -w /usr/src/myapp rust:${RUST_VERSION} cargo "$*"