let%test _ = 1 = 1

let%expect_test _ =
  print_endline @@ Qcow.Hello.say "Sailor";
  [%expect {|
    Hello Sailor
  |}]
