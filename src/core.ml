open Types
open Printer
open List_aux

(********************************************
*                                           *
*              Axiome                       *
*                                           *
********************************************) 

let is_axiom (seq: sequent): bool * string =
  if not_empty (inter seq.gauche seq.droite) then true, "yeah" else

  (* Surement inutile *)
  let a = contient seq.gauche seq.droite in
  let b = contient seq.droite seq.gauche in
  let c = List.exists (fun e -> seq.gauche = e) (permutations seq.droite) in

  if a then true, " Γ in Δ " else 
  if b then true, " Δ in Γ " else
  if c then true, " Γ = Δᵢ " else 
  (* ... *)
  false, ""

(********************************************
*                                           *
*              Réduction                    *
*                                           *
********************************************) 

let rotate_up l = try List.tl l @ [ List.hd l ] with Failure _ -> l 

let rec reduction ?(turn = -1) (seq: sequent): sequent list = 
  
  (* Rappel : 
    A₁, ..., Aₙ ⊢ B₁,...,Bₖ  
    ⟺ (A₁ ∧ . . . ∧ Aₙ) ⇒ (B₁ ∨ . . . ∨ Bₖ)
  *)
  match seq.gauche, seq.droite with
  (*  Rule : G∨ 
         Γ, F ⟹ Δ     Γ, G ⟹ Δ
        --------------------------
             Γ, F ∨ G ⟹ Δ 
  *)  
  | Or (f, g) :: gamma, sd -> 
      Printf.printf "   ( rule G∨ )";
      let gamma' = if gamma = [Vide] then [] else gamma in
      let s1 = { gauche = f :: gamma'; droite = sd } in 
      let s2 = { gauche = g :: gamma'; droite = sd } in       
      [s1;s2]

  (*  Rule : G∧ 
         Γ, F,G ⟹ Δ 
       ----------------
        Γ, F ∧ G ⟹ Δ 
  *) 
  | And (f, g) :: gamma, sd -> 
      Printf.printf "   ( rule G∧ )";
      let gamma' = if gamma = [Vide] then [] else gamma in
      let s = { gauche = f :: g :: gamma'; droite = sd } in
      [s]

  (* Rule : G ⟶ 
         Γ ⟹ Δ, F     Γ, G ⟹ Δ
        ---------------------------
             Γ, F ⟶ G ⟹ Δ 
  *) 
  | Implies (f, g) :: gamma, sd -> 
      Printf.printf "   ( rule G→ )";
      let gamma' = if gamma = [Vide] then [] else gamma in
      let s1 = { gauche = gamma; droite = f :: sd } in 
      let s2 = { gauche = g :: gamma'; droite = sd } in 
      [s1;s2]
  
      (* Rule : G¬ 
        Γ ⟹ Δ, F 
      --------------
        Γ, ¬F ⟹ Δ
  *) 
  | Not f :: gamma, sd -> 
      Printf.printf "   ( rule G¬ )";
      let seq_res = { gauche = gamma; droite = f :: sd } in 
      [{gauche = mk_set seq_res.gauche; droite = mk_set seq_res.droite}]
 
  | gamma, sd -> 
      if turn = List.length gamma 
      then reduction_droite gamma sd else
      reduction {gauche = rotate_up gamma; droite = sd} ~turn:(turn+1)

(********************************************
*                                           *
*          Réduction droite                 *
*                                           *
********************************************) 

and reduction_droite ?(turn = -1) (gamma: formule list) (fl: formule list) : sequent list =
  if turn = List.length fl 
  then (
    let cond, ax = is_axiom ({ gauche = gamma; droite = fl}) in
    if cond then raise (Win ax)
    else raise Loose
  ) 
  else match fl with  
  (*  Rule : D∨ 
          Γ ⟹ ∆, F, G    
        -----------------
          Γ ⟹ ∆, F ∨ G
  *)
  | Or (f, g) :: k -> 
      Printf.printf "   ( rule Dv )";
      let d = f :: g :: k in
      let seq_res = { gauche = gamma; droite = d } in 
      [{gauche = mk_set seq_res.gauche; droite = mk_set seq_res.droite}]
  (*  Rule : D∧ 
        Γ ⟹ ∆, F     Γ ⟹ ∆, G
      ----------------------------
            Γ ⟹ ∆, F ∧ G
  *) 
  | And (f, g) :: k -> 
      Printf.printf "   ( rule D∧ )";
      let s1 = { gauche = gamma; droite = f :: k } in 
      let s2 = { gauche = gamma; droite = g :: k } in 
      [s1;s2]

  (* Rule : D⟶ 
        Γ, F ⟹ ∆,G      
    ------------------
      Γ ⟹ ∆, F ⟶ G
  *) 
  | Implies (f, g) :: k -> 
      Printf.printf "   ( rule D→ )";
      let gamma' = if gamma = [Vide] then [] else gamma in
      let seq_res = { gauche = f :: gamma'; droite = g :: k } in
      [{gauche = mk_set seq_res.gauche; droite = mk_set seq_res.droite}]
  
  (* Rule : D¬ 
      Γ, G ⟹ ∆
    --------------
      Γ ⟹ ∆, ¬G
  *) 
  | Not f' :: k ->
      Printf.printf "   ( rule D¬ )";
      let gamma' = if gamma = [Vide] then [] else gamma in
      let seq_res = { gauche = f' :: gamma'; droite =  k } in 
      [{gauche = mk_set seq_res.gauche; droite = mk_set seq_res.droite}]

  | _ -> reduction_droite gamma (rotate_up fl) ~turn:(turn+1)
