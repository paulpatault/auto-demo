open Types

let is_axiom (seq: sequent): bool = seq.gauche = seq.droite 

let rec reduction (seq: sequent): sequent list = 
  match seq.gauche, seq.droite with 
  (*  Rule : G∨ 
         Γ, F ⟹ Δ     Γ, G ⟹ Δ
        --------------------------
             Γ, F ∨ G ⟹ Δ 
  *)  
  | Or (f, g) :: gamma, sd -> 
      let s1 = { gauche = f :: gamma; droite = sd } in 
      let s2 = { gauche = g :: gamma; droite = sd } in 

      Printf.printf "   ( rule G∨ )";
      
      [s1;s2]

  (*  Rule : G∧ 
         Γ, F,G ⟹ Δ 
       ----------------
        Γ, F ∧ G ⟹ Δ 
  *) 
  | And (f, g) :: gamma, sd -> 
      let s = { gauche = f :: g :: gamma; droite = sd } in

      Printf.printf "   ( rule G∧ )";
      [s]

  (* Rule : G ⟶ 
         Γ ⟹ Δ, F     Γ, G ⟹ Δ
        ---------------------------
             Γ, F ⟶ G ⟹ Δ 
  *) 
  | Implies (f, g) :: gamma, sd -> 
      let s1 = { gauche = gamma; droite = f :: sd } in 
      let s2 = { gauche = g :: gamma; droite = sd } in 
     
      Printf.printf "   ( rule G→ )";
      [s1;s2]
 
  (* Rule : G¬ 
        Γ ⟹ Δ, F 
      --------------
        Γ, ¬F ⟹ Δ
  *) 
  | Not f :: gamma, sd -> 
      let seq_res = { gauche = gamma; droite = f :: sd } in 

      Printf.printf "   ( rule G¬ )";
      

      [seq_res]
  
  | gamma, sd -> reduction_droite gamma sd

and reduction_droite (gamma: formule list) (fl: formule list): sequent list = 
  match fl with
  | [] -> failwith "vide"
  | e :: k -> 
    begin match e with 
    (*  Rule : D∨ 
            Γ ⟹ ∆, F, G    
          -----------------
            Γ ⟹ ∆, F ∨ G
    *)
    | Or (f, g) -> 
        let d = f :: g :: k in
        let seq_res = { gauche = gamma; droite = d } in 

        Printf.printf "   ( rule Dv )";
        
        [seq_res]
    (*  Rule : D∧ 
          Γ ⟹ ∆, F     Γ ⟹ ∆, G
        ----------------------------
              Γ ⟹ ∆, F ∧ G
    *) 
    | And (f, g) -> 
        let s1 = { gauche = gamma; droite = f :: k } in 
        let s2 = { gauche = gamma; droite = g :: k } in 

        Printf.printf "   ( rule D∧ )";
        

        [s1;s2]

    (* Rule : D⟶ 
         Γ, F ⟹ ∆,G      
      ------------------
        Γ ⟹ ∆, F ⟶ G
    *) 
    | Implies (f, g) -> 
        let seq_res = { gauche = f :: gamma; droite = g :: k } in 


        Printf.printf "   ( rule D→ )";
        
        [seq_res]
    
    (* Rule : D¬ 
        Γ, G ⟹ ∆
      --------------
        Γ ⟹ ∆, ¬G
    *) 
    | Not f' -> 
        let seq_res = { gauche = f' :: gamma; droite =  k } in 

        Printf.printf "   ( rule D¬ )";

        [seq_res]
    
    | _ -> raise Loose
    end 