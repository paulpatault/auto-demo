open Types
open Printer 
open Core

let rec eval (fs: sequent) =
  spaces ();
  sequent_to_string fs;
  try
    let red_fs = reduction fs in
    incr decale;
    Printf.printf "\n"; 
    let a = List.fold_left (fun acc e -> acc && eval e) true red_fs in
    decr decale; a
  with | Loose -> Printf.printf "   → impossible\n"; false
       | Win s -> Printf.printf "   → is axiom (%s)\n" s; true


let make_formule (s: string) = 
  Printf.printf "%s" s; flush stdout;
  let lexbuf = Lexing.from_channel stdin in
  let formule_in = Parser.main Lexer.scan_token lexbuf in
  match formule_in with 
  | Hyp hl -> hl
  | _ -> [formule_in]

let run () = 
  let gamma = make_formule "Γ (hyphthèses): " in
  let a_dem = make_formule "À démontrer: " in
  Printf.printf "\n---- Évaluation ----\n"; flush stdout;
  let seq = { gauche = gamma; droite = a_dem } in
  if eval seq 
  then Printf.printf "---- VALIDE ----\n"
  else Printf.printf "---- INVALIDE ----\n"

let _ = run ()