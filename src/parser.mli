
(* The type of tokens. *)

type token = 
  | SEMI
  | RPAR
  | OR
  | NOT
  | LPAR
  | IDENT of (string)
  | FLECHE
  | EOF
  | EMPTY
  | AND

(* This exception is raised by the monolithic API functions. *)

exception Error

(* The monolithic API. *)

val main: (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (Types.terme_ou_formule)
