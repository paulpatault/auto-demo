open Types
open Printer
open Core

let rec eval (fs: sequent) =
  Unix.sleepf 0.5;
  spaces ();
  sequent_to_string fs;
  try
    let red_fs = reduction fs in
    incr decale;
    Printf.printf "\n";  flush stdout;
    let a = List.fold_left (fun acc e -> acc && eval e) true red_fs in
    decr decale; a
  with
    | Loose ->
        Printf.printf "   → impossible\n";
        flush stdout;
        false
    | Win s ->
        Printf.printf "   → is axiom\n";
        flush stdout;
        true

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
