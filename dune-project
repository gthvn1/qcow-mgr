(lang dune 3.16)
(name hello_world)
(generate_opam_files true)

(package
 (name hello_world)
 (synopsis "A short synopsis")
 (description "A longer description")
 (depends ocaml dune))

; See the complete stanza docs at https://dune.readthedocs.io/en/stable/reference/dune-project/index.html
