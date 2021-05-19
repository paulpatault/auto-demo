(*
---------------------------------------------------------
Γ : P ; P -> Q ; Q -> R ; R -> A
Δ : A
---------------------------------------------------------
Γ : P ; Q ; P && Q -> R
Δ : R
---------------------------------------------------------
Γ : !(P && Q)
Δ : !P || !Q
 *)

open Types
open Evaluation

let p = Predicat ("P", [])
let q = Predicat ("Q", [])
let p_ou_q = Or (p, q)
let p_et_q = And (p, q)
let p_implique_q = Implies (p, q)
let non_q_implique_non_p = Implies (Not q, Not p)

(* P ⊢ P ∨ Q *)
let test1 = {
  gauche = [p];
  droite = [p_ou_q]
}

(* P ∨ Q ⊢ P ∧ Q *)
let test2 = {
  gauche = [p_ou_q];
  droite = [p_et_q]
}

(* ø ⊢ (¬B → ¬A) → (A → B) *)
let test3 = {
  gauche = [];
  droite = [Implies (non_q_implique_non_p, p_implique_q)]
}

(* P, P → Q ⊢ Q *)
let test4 = {
  gauche = [p; p_implique_q];
  droite = [q]
}

(* ø ⊢ P ∨ ¬P *)
let test5 = {
  gauche = [];
  droite = [Or (p, Not p)]
}

let () =
  assert (eval test1 ~printopt:false = true);
  assert (eval test2 ~printopt:false = false);
  assert (eval test3 ~printopt:false = true);
  assert (eval test4 ~printopt:false = true);
  assert (eval test5 ~printopt:false = true);
