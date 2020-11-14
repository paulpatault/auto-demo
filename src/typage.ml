(**
   Typage de FUN
*)

type typ = TypInt | TypFun of typ * typ | TypPair of typ * typ

exception TypeError

type expr =
  | Cst of int
  | Add of expr * expr
  | Var of string
  | Let of string * expr * expr
  | LetPair of string * string * expr * expr
  | Fun of string * typ * expr
  | App of expr * expr
  | Pair of expr * expr
  | Fst of expr
  | Snd of expr
  
module Env = Map.Make (String)

let rec type_expr (e : expr) (env : typ Env.t) : typ =
  match e with
  | Cst _ -> TypInt
  | Add (e1, e2) ->
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in
      if t1 = TypInt && t2 = TypInt then TypInt else raise TypeError
  | Var x -> Env.find x env
  | Let (x, e1, e2) ->
      let t1 = type_expr e1 env in
      type_expr e2 (Env.add x t1 env)
  | LetPair (x, y, e1, e2) -> (
      let te = type_expr e1 env in
      match te with
      | TypPair (t1, t2) -> type_expr e2 (Env.add y t2 (Env.add x t1 env))
      | _ -> raise TypeError )
  | Fun (x, tx, e) ->
      let te = type_expr e (Env.add x tx env) in
      TypFun (tx, te)
  | App (f, a) -> (
      let tf = type_expr f env in
      let ta = type_expr a env in
      match tf with
      | TypFun (tx, te) -> if tx = ta then te else raise TypeError
      | _ -> raise TypeError )
  | Pair (e1, e2) ->
      let t1 = type_expr e1 env in
      let t2 = type_expr e2 env in
      TypPair (t1, t2)
  | Fst e -> (
      let te = type_expr e env in
      match te with TypPair (t1, _) -> t1 | _ -> raise TypeError )
  | Snd e -> (
      let te = type_expr e env in
      match te with TypPair (_, t2) -> t2 | _ -> raise TypeError )
