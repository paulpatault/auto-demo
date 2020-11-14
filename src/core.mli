open Types

val is_axiom : sequent ->  bool * string 

val reduction : ?turn: int -> sequent -> sequent list 
