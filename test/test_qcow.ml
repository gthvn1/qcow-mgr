let%test _ =
  let qh = Qcow.Header.create () in
  qh.magic = Int32.of_int 0x514649fb && qh.version = Int32.of_int 3

let%test _ = 1 = 1

let%expect_test _ =
  print_endline "Hello, Sailor!";
  [%expect {|
    Hello, Sailor!
  |}]
