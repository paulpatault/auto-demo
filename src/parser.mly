%{
  open Types
%}

%token <int> CST 
%token <string> IDENT
%token NOT AND OR FORALL EXISTS FLECHE
%token EGAL INEGAL LT
%token LPAR RPAR
%token COMMA SEMI
%token EMPTY
%token EOF

%right EXISTS
%right FORALL
%right FLECHE
%right OR
%right AND
%nonassoc NOT

%start main
%type <Types.formule> main

%%

main:
| e=expr EOF { e }
| l=separated_list(SEMI, expr) EOF {
  Hyp l 
}
;

expr_simple:
| n=CST             { Variable (string_of_int n) }
| x=IDENT           { Variable x }
| e=EMPTY           { Variable "" }
;

expr:
| LPAR e=expr RPAR       { e }
| e=expr_simple          { 
    match e with
    | Variable "" -> Vide
    | Variable x -> Predicat (x, [])
}
| NOT e=expr             { Not(e) }
| e1=expr AND e2=expr    { And(e1, e2) }
| e1=expr OR  e2=expr    { Or(e1, e2) }
| e1=expr COMMA e2=expr  { e1 }
| e1=expr_simple EGAL e2=expr_simple   { Predicat ("=", [e1; e2]) }
| e1=expr_simple INEGAL e2=expr_simple { Predicat ("<>", [e1; e2]) }
| e1=expr_simple LT e2=expr_simple     {
    Predicat ("<", [e1; e2])
}
| FORALL x=IDENT COMMA e=expr   { Forall(x, e) }
| EXISTS x=IDENT COMMA e=expr   { Exists(x, e) }
| e1=expr FLECHE e2=expr  { Implies(e1, e2) }
;
