open Core

let () =
  (* We want to create a file and write the Qcow magic into it *)
  let magic = Bytes.of_char_list [ 'Q'; 'F'; 'I'; '\xfb' ] in
  let oc = Out_channel.create "test.raw" in
  Out_channel.output_bytes oc magic;
  print_endline @@ Qcow.Hello.say "world"
