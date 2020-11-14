open Types


val formule_to_string : formule -> unit 
  
val terme_to_string : terme -> unit

val formules_to_string : formule list -> unit

val sequent_to_string : sequent -> unit
  
val decale : int ref 

val spaces : unit -> unit