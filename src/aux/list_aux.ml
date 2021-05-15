let rec insert (x : 'a) (l : 'a list) : 'a list list =
  match l with
  | [] -> [ [ x ] ]
  | h :: t ->
      let r = insert x t in
      (x :: l) :: List.map (fun v -> h :: v) r

let rec permutations (l : 'a list) : 'a list list =
  match l with
  | [] -> [ [] ]
  | h :: t ->
      let r = permutations t in
      List.fold_left (fun acc p -> insert h p @ acc) [] r

let rec contient (l1: 'a list) (l2: 'a list): bool =
  match l2 with
  | [] -> true
  | e::k -> List.exists (fun e' -> e' = e) l1 && contient l1 k

let mk_set l =
  List.fold_left (
      fun acc e ->
        if List.mem e acc then acc
        else e :: acc
    ) [] l

let inter l1 l2 =
  let l1 = mk_set l1 in
  let l2 = mk_set l2 in
  List.fold_left (
      fun acc e ->
        if List.mem e l2 then e :: acc
        else acc
    ) [] l1

let empty l = List.length l = 0

let not_empty l = List.length l <> 0
