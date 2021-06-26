#!/bin/sh

mkdir build/gcc
cd build/gcc
../../gcc/configure --prefix=/usr --enable-languages=jit,c++ --disable-multilib --disable-bootstrap --enable-host-shared --enable-checking=release

echo /work/build/gcc/gcc > /work/rustc_codegen_gcc/gcc_path

cd /work/rustc_codegen_gcc
./prepare.sh
cargo install ripgrep
