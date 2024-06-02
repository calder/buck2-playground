#!/bin/bash -e

/home/calder/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rustc \
  --crate-name=buck2_playground \
  --crate-type=bin \
  --edition=2021=src/main.rs \
  --error-format=json \
  --json=diagnostic-rendered-ansi,artifacts,future-incompat \
  --emit=dep-info,link \
  -C=embed-bitcode=no \
  -C=debuginfo=2 \
  -C=metadata=4e4ed27727066bae \
  -C=extra-filename=-4e4ed27727066bae \
  --out-dir=/home/calder/Source/buck2-playground/target/debug/deps \
  -C=incremental=/home/calder/Source/buck2-playground/target/debug/incremental \
  -L=dependency=/home/calder/Source/buck2-playground/target/debug/deps \
  --extern=anyhow=/home/calder/Source/buck2-playground/target/debug/deps/libanyhow-8e22740e64bc478f.rlib \
  --extern=polars=/home/calder/Source/buck2-playground/target/debug/deps/libpolars-c2e25c2be45180c4.rlib \
  --extern=reqwest=/home/calder/Source/buck2-playground/target/debug/deps/libreqwest-98fc244d4a018154.rlib \
  --extern=tokio=/home/calder/Source/buck2-playground/target/debug/deps/libtokio-fd19d9f5d44721d0.rlib \
  -L=native=/home/calder/Source/buck2-playground/target/debug/build/psm-e5b0e6d5e740b0ef/out
