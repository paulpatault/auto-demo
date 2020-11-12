{
  open Lexing
  open Parser
  open Printf
  (* 
  let file = Sys.argv.(1)

  let cout = open_out (file ^ ".doc")
  let print s = fprintf cout s
  (* ∀ x, x < 10 *)

   *)
  exception Eof 
}

let alpha = ['a'-'z' 'A'-'Z']
let digit = ['0'-'9']
let ident = (alpha | digit) (alpha | digit | '_')*

rule scan_token = parse
  | [' ' '\t' '\r']+ { scan_token lexbuf }
  | '\n' { EOF }
  | digit+ as n  { CST(int_of_string n) }
  | ident as id  { IDENT(id) }
  | "[A]"  { FORALL }
  | "[E]"  { EXISTS }
  | '!'    { NOT }
  | '_'    { EMPTY }
  | '='    { EGAL }
  | "<>"   { INEGAL }
  | '<'    { LT }
  | "&&"   { AND }
  | "||"   { OR }
  | "=>"   { FLECHE }
  | '('    { LPAR }
  | ')'    { RPAR }
  | ','    { COMMA }
  | "$"    { END }
  | ";"    { SEMI }
  | _ as c { failwith (Printf.sprintf "-> invalid character: %c" c) }
  | eof    { raise Eof }

{
  (* let rec token_to_string = function

    | IDENT s -> sprintf "IDENT %s" s
    | CONST n -> sprintf "CONST %i" n
    | COMMA -> "COMMA"
    | FORALL -> "FORALL"
    | EXISTS -> "EXISTS"
    | OR  -> "OR"
    | AND -> "AND"  
    | FLECHE -> "FLECHE"
    |  -> ""
    | LT -> "LT"
    | LPAR -> "LPAR"
    | RPAR -> "RPAR"
    | INEGAL -> "INEGAL"
    | EGAL -> "EGAL"  *)
}
