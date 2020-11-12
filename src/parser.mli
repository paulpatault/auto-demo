
(* The type of tokens. *)

type token = 
  | RPAR
  | OR
  | NOT
  | LT
  | LPAR
  | INEGAL
  | IDENT of (string)
  | FORALL
  | FLECHE
  | EXISTS
  | EOF
  | EGAL
  | CST of (int)
  | COMMA
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Types.formule)
