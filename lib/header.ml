type qcow_header = {
  magic : int32; (* 4 bytes *)
  version : int32; (* TODO: add the other fields *)
}

let create () : qcow_header =
  { magic = Int32.of_int 0x514649fb; version = Int32.of_int 3 }

let to_bytes (qh : qcow_header) : bytes =
  (* transform the header to bytes *)
  let buffer = Bytes.create 8 in
  Bytes.set_int32_be buffer 0 qh.magic;
  Bytes.set_int32_be buffer 4 qh.version;
  buffer
