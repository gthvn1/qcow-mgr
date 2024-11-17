open Core

let () =
  let qhb = Qcow.Header.(create () |> to_bytes) in
  let oc = Out_channel.create "test.raw" in
  Out_channel.output_bytes oc qhb
