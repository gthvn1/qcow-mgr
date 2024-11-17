open Core

let () =
  (* We want to create a file and write \x61 into it *)
  let oc = Out_channel.create "test.raw" in
  Out_channel.output_byte oc 61;
  print_endline @@ Qcow.Hello.say "world"
