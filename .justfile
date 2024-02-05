# gets run when only `just` was run, no params what so ever
_just_just:
    @just --list

add mod *rest:
    cargo add --package retro8-{{mod}} {{rest}}

addl mod *crate:
    cargo add --package retro8-{{mod}} --path retro8-{{crate}}

lib mod:
    cargo init --lib retro8-{{mod}}

_bin mod:
    @echo "this is a library. there shouldn't be any binaries"

build-debug:
    cargo build --verbose

build-release:
    cargo build --verbose --release

dev: build-debug
    cargo run --quiet

release: build-release
    cargo run --quiet --release

build-all: build-debug build-release
