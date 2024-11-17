# Qcow Info

## Links

- [Ocaml core doc](https://ocaml.org/p/core/latest/doc/index.html)
- [Qcow Specifications](https://github.com/qemu/qemu/blob/master/docs/interop/qcow2.txt)

## Devel

- **NOTE**: it is a work in progress... currently we are doing nothing except starting the project

- build: `dune build`
- format: `dune fmt`, or also we can `dune build @fmt`
- run: `dune exec qcow-mgr`
- test: `dune runtest`
- When developping I like running: `dune runtest --watch`
