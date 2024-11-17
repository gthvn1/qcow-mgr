open Core

let () =
  (* We want to create a file and write the Qcow magic into it *)
  let qh = Qcow.Header.create () in
  let oc = Out_channel.create "test.raw" in
  Out_channel.output_bytes oc (Qcow.Header.to_bytes qh)
