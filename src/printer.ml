open Types

let rec formule_to_string (f: formule): unit =
  match f with
  | Vide -> Printf.printf "" 
  | Predicat(c, tl)  -> 
      Printf.printf "(%s" c;
      if List.length tl > 0 then (
        Printf.printf "(";
        List.iter terme_to_string tl;
        Printf.printf "))"
      ) 
      else Printf.printf ")"
  | Forall (v, f')   -> Printf.printf "pour tout %s " v; formule_to_string f'
  | Exists (v, f')   -> Printf.printf "il existe %s " v; formule_to_string f'
  | Or (f1, f2)      -> formule_to_string f1; Printf.printf " ∨ "; formule_to_string f2
  | And (f1, f2)     -> formule_to_string f1; Printf.printf " ∧ "; formule_to_string f2
  | Implies (f1, f2) -> formule_to_string f1; Printf.printf " ⇒ "; formule_to_string f2
  | Not f'           -> Printf.printf "non "; formule_to_string f'
and terme_to_string (t: terme): unit = 
  match t with 
  | Variable v -> Printf.printf "%s" v
  | Constant (c, tl) -> 
    Printf.printf "%s" c; 
    if List.length tl > 0 then (
      Printf.printf ",";
      List.iter terme_to_string tl
    )

let rec formules_to_string (fl: formule list): unit = 
  match fl with
  | []      -> ()
  | x :: [] -> formule_to_string x
  | e :: k  -> formule_to_string e; Printf.printf ", "; formules_to_string k

let sequent_to_string (seq: sequent): unit =
  formules_to_string seq.gauche; 
  Printf.printf " ⊢ ";
  formules_to_string seq.droite

let decale = ref 0

let spaces () = 
  let str = String.init !decale (fun x -> ' ') in
  let s = String.concat "" (List.init 3 (fun x -> str)) in
  Printf.printf "%s" s