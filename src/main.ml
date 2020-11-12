open Types
open Printer 
open Core

let toutXNeg = Forall("x", (Predicat("<", [Variable ("x"); Constant("0", [])])))

let rec run (fs: sequent) =
  spaces ();
  sequent_to_string fs;
  if is_axiom fs then (Printf.printf "   → is axiom\n"; true) 
  else (
    try 
      let red_fs = reduction fs in
      incr decale;
      Printf.printf "\n"; 
      let a = List.fold_left (fun acc e -> acc && run e) true red_fs in
      decr decale; a
    with Loose -> Printf.printf "   → impossible\n"; false
  )

let fs = {
  gauche = [And (Predicat ("A", []), Predicat ("B", []))];
  droite = [Or (Predicat ("A", []), Predicat ("B", []))]
}

let fs2 = {
  gauche = [Or (Predicat ("A", []), Predicat ("B", []))];
  droite = [And (Predicat ("A", []), Predicat ("B", []))]
}

let _ = run fs
