type var = string

type const = string

type terme =
  | Variable of var
  | Constant of const * terme list

type formule =
  | Vide
  | Predicat of const * terme list
  | Or       of formule * formule
  | And      of formule * formule
  | Implies  of formule * formule
  | Not      of formule
  | Hyp      of formule list

type terme_ou_formule =
  | T of terme
  | F of formule

(* let toutXNeg = Forall("x", (Predicat("<", [Variable ("x"); Constant("0", [])])))  *)

type sequent = {gauche : formule list; droite : formule list}

(* let fs = {
  gauche = [And (Predicat ("A", []), Predicat ("B", []))];
  droite = [Or (Predicat ("A", []), Predicat ("B", []))]
}

let fs2 = {
  gauche = [Or (Predicat ("A", []), Predicat ("B", []))];
  droite = [And (Predicat ("A", []), Predicat ("B", []))]
} *)

exception Loose
exception Win of string
