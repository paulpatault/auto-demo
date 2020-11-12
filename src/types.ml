type var = string 

type const = string 

type terme = 
  | Variable of var 
  | Constant of const * terme list

type formule = 
  | Predicat of const * terme list
  | Forall   of var * formule 
  | Exists   of var * formule 
  | Or       of formule * formule 
  | And      of formule * formule 
  | Implies  of formule * formule 
  | Not      of formule 

type sequent = {gauche : formule list; droite : formule list}

exception Loose 