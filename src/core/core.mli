open Types

val is_axiom : sequent ->  bool * string

val reduction : ?turn: int -> ?printopt: bool -> sequent -> sequent list
