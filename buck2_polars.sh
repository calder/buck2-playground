#!/bin/bash -e

export CARGO_PKG_VERSION=0.40.0

/home/calder/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rustc \
  buck-out/v2/gen/root/904931f735703749/third-party/__polars-0.40.0__/__srcs/polars-0.40.0.crate/src/lib.rs \
  --crate-name=polars \
  --crate-type=rlib \
  -Crelocation-model=pic \
  --edition=2021 \
  -Cmetadata=root//third-party:polars-0.40.0 \
  -Cprefer-dynamic=no \
  --target=x86_64-unknown-linux-gnu \
  --cap-lints=allow \
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
  --extern=polars_core=buck-out/v2/gen/root/904931f735703749/third-party/__polars-core-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_core-78c9cd32.rlib \
  --extern=polars_error=buck-out/v2/gen/root/904931f735703749/third-party/__polars-error-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_error-5c63437d.rlib \
  --extern=polars_io=buck-out/v2/gen/root/904931f735703749/third-party/__polars-io-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_io-461e4799.rlib \
  --extern=polars_lazy=buck-out/v2/gen/root/904931f735703749/third-party/__polars-lazy-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_lazy-26f74559.rlib \
  --extern=polars_ops=buck-out/v2/gen/root/904931f735703749/third-party/__polars-ops-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_ops-63b7056d.rlib \
  --extern=polars_parquet=buck-out/v2/gen/root/904931f735703749/third-party/__polars-parquet-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_parquet-7ff08cef.rlib \
  --extern=polars_sql=buck-out/v2/gen/root/904931f735703749/third-party/__polars-sql-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_sql-2a8af3f7.rlib \
  --extern=polars_time=buck-out/v2/gen/root/904931f735703749/third-party/__polars-time-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_time-34a8c020.rlib \
  --extern=polars_utils=buck-out/v2/gen/root/904931f735703749/third-party/__polars-utils-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_utils-15c5e4b4.rlib \
  --extern=arrow=buck-out/v2/gen/root/904931f735703749/third-party/__polars-arrow-0.40.0__/rlib-pic-static_pic-metadata-full/libpolars_arrow-45028e5c.rlib \
  -Ldependency=buck-out/v2/gen/root/904931f735703749/third-party/__polars-0.40.0__/rlib-pic-static_pic-link-depsfull-0 \
  --remap-path-prefix=buck-out/v2/gen/root/904931f735703749/third-party/__polars-0.40.0__/__srcs/=./third-party/ \
  -Clinker=buck-out/v2/gen/root/904931f735703749/third-party/__polars-0.40.0__/linker_wrapper.sh \
  -Cextra-filename=-5d169918 \
  --emit=link=buck-out/v2/gen/root/904931f735703749/third-party/__polars-0.40.0__/rlib-pic-static_pic-link/libpolars-5d169918.rlib \
  --out-dir=buck-out/v2/gen/root/904931f735703749/third-party/__polars-0.40.0__/rlib-pic-static_pic-link/extras/libpolars \
  --remap-path-prefix=/home/calder/Source/buck2-playground=. \
  --remap-path-prefix=/home/calder/Source/buck2-playground=.
