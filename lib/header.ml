type qcow_header = {
  magic : int32; (* 0x00 - 0x03 *)
  version : int32; (* 0x04 - 0x07 *)
  backing_file_offset : int64; (* 0x08 - 0x0F *)
  backing_file_size : int32; (* 0x10-0x13 *)
  cluster_bits : int32; (* 0x14 - 0x17 *)
}

let create () : qcow_header =
  (* Currently we are using a fix size for cluster by setting
     cluster bits to 16 (=> 65536 )*)
  {
    magic = Int32.of_int 0x514649fb;
    version = Int32.of_int 3;
    backing_file_offset = Int64.of_int 0;
    backing_file_size = Int32.of_int 0;
    cluster_bits = Int32.of_int 16;
  }

let to_bytes (qh : qcow_header) : bytes =
  (* transform the header to bytes *)
  let buffer = Bytes.create 0x24 in
  Bytes.set_int32_be buffer 0x00 qh.magic;
  Bytes.set_int32_be buffer 0x04 qh.version;
  Bytes.set_int64_be buffer 0x08 qh.backing_file_offset;
  Bytes.set_int32_be buffer 0x10 qh.backing_file_size;
  Bytes.set_int32_be buffer 0x14 qh.cluster_bits;
  buffer
