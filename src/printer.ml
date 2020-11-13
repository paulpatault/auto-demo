open Types

(********************************************
*                                           *
*              Globals                      *
*                                           *
********************************************) 

let parenthesage = ref false 

let () = 
  try 
    if int_of_string (Sys.argv.(1)) > 0 then parenthesage := true
  with Invalid_argument s -> ()

let red    = "\027[31m"
let green  = "\027[32m"
let orange = "\027[33m"
let blue   = "\027[34m"
let purple = "\027[35m"
let cyan   = "\027[36m"
let ltgrey = "\027[37m"
let stop   = "\027[0m"

let colors = [|blue; red; green; purple;|]
let i = ref 0
let len = Array.length colors

(********************************************
*                                           *
*              Functions                    *
*                                           *
********************************************) 

let open_par i' =
  incr i;
  if !parenthesage then Printf.printf "%s" (colors.(i' mod len) ^ "(" ^ stop)

let close_par i' =
  if !parenthesage then Printf.printf "%s" (colors.(i' mod len) ^ ")" ^ stop)


let rec formule_to_string (f: formule): unit =
  match f with
  | Vide -> Printf.printf "" 
  | Predicat(c, termel)  -> 
      if List.length termel > 0 then (
        let vi = !i in open_par vi;
        terme_to_string (List.hd termel);
        Printf.printf " %s " c;
        terme_to_string (List.hd (List.tl termel));
        close_par vi
      ) 
      else Printf.printf "%s" c
  | Forall (v, f')   -> let vi = !i in open_par vi; Printf.printf "pour tout %s " v; formule_to_string f'; close_par vi
  | Exists (v, f')   -> let vi = !i in open_par vi; Printf.printf "il existe %s " v; formule_to_string f'; close_par vi
  | Or (f1, f2)      -> let vi = !i in open_par vi; formule_to_string f1; Printf.printf " ∨ "; formule_to_string f2;close_par vi
  | And (f1, f2)     -> let vi = !i in open_par vi; formule_to_string f1; Printf.printf " ∧ "; formule_to_string f2;close_par vi
  | Implies (f1, f2) -> let vi = !i in open_par vi; formule_to_string f1; Printf.printf " ⇒ "; formule_to_string f2;close_par vi
  | Not f'           -> let vi = !i in open_par vi; Printf.printf "non "; formule_to_string f';close_par vi
  | Hyp lf           -> let vi = !i in open_par vi; formules_to_string lf; close_par vi
and terme_to_string (t: terme): unit = 
  match t with 
  | Variable v -> Printf.printf "%s" v
  | Constant (c, tl) -> 
    Printf.printf "%s" c; 
    if List.length tl > 0 then (
      Printf.printf ",";
      List.iter terme_to_string tl
    )
and formules_to_string (fl: formule list): unit = 
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