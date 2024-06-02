#!/bin/bash -e

export CARGO_PKG_VERSION=0.40.0

/home/calder/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rustc \
  --crate-name polars \
  --edition=2021 /home/calder/.cargo/registry/src/index.crates.io-6f17d22bba15001f/polars-0.40.0/src/lib.rs \
  --crate-type lib \
  --emit=dep-info,metadata,link \
  -C embed-bitcode=no \
  -C debuginfo=2 \
  --cfg 'feature="csv"' \
  --cfg 'feature="default"' \
  --cfg 'feature="docs"' \
  --cfg 'feature="dtype-date"' \
  --cfg 'feature="dtype-datetime"' \
  --cfg 'feature="dtype-duration"' \
  --cfg 'feature="dtype-slim"' \
  --cfg 'feature="fmt"' \
  --cfg 'feature="lazy"' \
  --cfg 'feature="polars-io"' \
  --cfg 'feature="polars-lazy"' \
  --cfg 'feature="polars-ops"' \
  --cfg 'feature="polars-time"' \
  --cfg 'feature="temporal"' \
  --cfg 'feature="zip_with"' \
  -C metadata=c2e25c2be45180c4 \
  -C extra-filename=-c2e25c2be45180c4 \
  --out-dir /home/calder/Source/buck2-playground/target/debug/deps \
  -L dependency=/home/calder/Source/buck2-playground/target/debug/deps \
  --extern arrow=/home/calder/Source/buck2-playground/target/debug/deps/libpolars_arrow-168481741ced6c6f.rmeta \
  --extern polars_core=/home/calder/Source/buck2-playground/target/debug/deps/libpolars_core-618c2731a63bce89.rmeta \
  --extern polars_error=/home/calder/Source/buck2-playground/target/debug/deps/libpolars_error-0f5d930c40c18525.rmeta \
  --extern polars_io=/home/calder/Source/buck2-playground/target/debug/deps/libpolars_io-46a48998a260abd4.rmeta \
  --extern polars_lazy=/home/calder/Source/buck2-playground/target/debug/deps/libpolars_lazy-cb6b4cad2c28bcdd.rmeta \
  --extern polars_ops=/home/calder/Source/buck2-playground/target/debug/deps/libpolars_ops-e8944ea1267302dc.rmeta \
  --extern polars_parquet=/home/calder/Source/buck2-playground/target/debug/deps/libpolars_parquet-8dcd1745771d1d4e.rmeta \
  --extern polars_time=/home/calder/Source/buck2-playground/target/debug/deps/libpolars_time-a1f2bcd35a166e7b.rmeta \
  --extern polars_utils=/home/calder/Source/buck2-playground/target/debug/deps/libpolars_utils-db16bc4fdc483da9.rmeta \
  --cap-lints allow \
  -L native=/home/calder/Source/buck2-playground/target/debug/build/psm-e5b0e6d5e740b0ef/out
