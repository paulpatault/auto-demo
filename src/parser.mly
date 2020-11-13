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
| n=CST             { Predicat(string_of_int n, []) }
| x=IDENT           { Predicat(x, []) }
| e=EMPTY           { Vide }
;

expr:
| LPAR e=expr RPAR      { e }
| e=expr_simple         { e }
| NOT e=expr            { Not(e) }
| e1=expr AND e2=expr   { And(e1, e2) }
| e1=expr OR  e2=expr   { Or(e1, e2) }
| e1=expr EGAL e2=expr  { e1 }
| e1=expr COMMA e2=expr { e1 }
| e1=expr LT e2=expr    {
    let left = e1 in
    let right = e2 in
    Predicat("<", [])
}
| e1=expr INEGAL e2=expr  { e1 }
| e1=expr EGAL e2=expr    { e1 }
| FORALL x=IDENT e=expr   { Forall(x, e) }
| EXISTS x=IDENT e=expr   { Exists(x, e) }
| e1=expr FLECHE e2=expr  { Implies(e1, e2) }
;
