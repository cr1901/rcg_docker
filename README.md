# Quick Start

From your host system:

```sh
docker build -t rcg-local .
docker volume create rcg-build
```

Enter the container using:
`docker run -ti -v rcg-build:/work/build rcg-local bash`

Inside the container, run `prepare.sh`. Right now, only gcc build artifacts are
saved; the rust/cargo part of the build is quick enough.

After running `prepare.sh`, cd to `/work/rustc_codegen_gcc`, and then run `./test.sh --release`.
We should get to the part where `rg` runs and then bomb w/ `command not found`.
