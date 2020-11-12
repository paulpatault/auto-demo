open Printer
open Types

let _ =
  try
    let lexbuf = Lexing.from_channel stdin in
    while true do
      let result = Parser.main Lexer.scan_token lexbuf in
      formule_to_string result; print_newline(); flush stdout
    done
  with Lexer.Eof ->
    exit 0