open Types
open Printer
open Core
open Evaluation

let make_formule (s: string) =
  Printf.printf "%s" s; flush stdout;
  let lexbuf = Lexing.from_channel stdin in
  let formule_in = Parser.main Lexer.scan_token lexbuf in
  match formule_in with
  | F (Hyp hl) -> hl
  | F x -> [x]
  | T _ -> []

let run () =
  let gamma = make_formule "Γ (hypothèses): " in
  let a_dem = make_formule "Δ (à démontrer): " in
  Printf.printf "\n---- Évaluation ----\n"; flush stdout;
  let seq = { gauche = gamma; droite = a_dem } in
  if eval seq
  then Printf.printf "---- VALIDE ----\n"
  else Printf.printf "---- INVALIDE ----\n"

let _ = run ()

(*
let _ = formules_to_string (make_formule "formule:")
let () = Printf.printf "\n" *)
