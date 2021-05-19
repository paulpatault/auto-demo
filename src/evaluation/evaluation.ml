open Types
open Printer
open Core

let rec eval ?(printopt = true) (fs: sequent) =

  if printopt then (
    (* Unix.sleepf 0.5; *)
    spaces ();
    sequent_to_string fs;
  );

  try
    let red_fs = reduction fs ~printopt:printopt in

    if printopt then (
      incr decale;
      Printf.printf "\n";  flush stdout;
    );

    let a = List.fold_left (fun acc e -> acc && eval e ~printopt:printopt) true red_fs in

    if printopt then (
      decr decale;
    );

    a

  with
    | Loose ->
        if printopt then (
          Printf.printf "   → impossible\n";
          flush stdout;
        );
        false
    | Win s ->
        if printopt then (
          Printf.printf "   → is axiom\n";
          flush stdout;
        );
        true
