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
  Printf.printf "Formule de %s: " s; flush stdout;
  let lexbuf = Lexing.from_channel stdin in
  let formule_in = Parser.main Lexer.scan_token lexbuf in
  formule_in

let run () = 
  let gauche = make_formule "gauche" in
  let droite = make_formule "droite" in
  Printf.printf "\n---- Évaluation ----\n"; flush stdout;
  let seq = { gauche = [gauche]; droite = [droite] } in
  eval seq

let _ = run ()