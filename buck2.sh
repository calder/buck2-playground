#!/bin/bash -e

/home/calder/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin/rustc \
  buck-out/v2/gen/root/904931f735703749/__hello__/__srcs/src/main.rs \
  --crate-name=hello \
  --crate-type=bin \
  --edition=2021 \
  -Crelocation-model=pic \
  -Cmetadata=root//:hello \
  -Cprefer-dynamic=no \
  --target=x86_64-unknown-linux-gnu \
  --extern=anyhow=buck-out/v2/gen/root/904931f735703749/third-party/__anyhow-1.0.86__/rlib-pic-static_pic-link/libanyhow-7dc12526.rlib \
  --extern=polars=buck-out/v2/gen/root/904931f735703749/third-party/__polars-0.40.0__/rlib-pic-static_pic-link/libpolars-5d169918.rlib \
  --extern=reqwest=buck-out/v2/gen/root/904931f735703749/third-party/__reqwest-0.12.4__/rlib-pic-static_pic-link/libreqwest-76951ca1.rlib \
  --extern=tokio=buck-out/v2/gen/root/904931f735703749/third-party/__tokio-1.38.0__/rlib-pic-static_pic-link/libtokio-1f811437.rlib \
  -Ldependency=buck-out/v2/gen/root/904931f735703749/__hello__/bin-pic-static_pic-link-depslink-0 \
  --remap-path-prefix=buck-out/v2/gen/root/904931f735703749/__hello__/__srcs/=./ \
  -Clinker=buck-out/v2/gen/root/904931f735703749/__hello__/linker_wrapper.sh \
  -Clink-arg=@buck-out/v2/gen/root/904931f735703749/__hello__/bin-pic-static_pic-link/__hello-link_linker_args.txt \
  --emit=link=buck-out/v2/gen/root/904931f735703749/__hello__/static_pic/hello \
  --out-dir=buck-out/v2/gen/root/904931f735703749/__hello__/bin-pic-static_pic-link/extras/hello \
  --remap-path-prefix=/home/calder/Source/buck2-playground=. \
  --remap-path-prefix=/home/calder/Source/buck2-playground=.
