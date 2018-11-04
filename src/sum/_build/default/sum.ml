open Base
open Stdio

let rec readAndAccumulate accum =
  let line = In_channel.input_line In_channel.stdin in
  match line with
  | None -> accum
  | Some x -> readAndAccumulate (accum +. Float.of_string x)

let () = 
  printf "Total: %F\n" (readAndAccumulate 0.)
