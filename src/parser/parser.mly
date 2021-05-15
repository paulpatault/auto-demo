%{
  open Types
%}

%token <string> IDENT
%token NOT AND OR FLECHE
%token LPAR RPAR
%token SEMI /* ; */
%token EMPTY
%token EOF

%right FLECHE
%right OR
%right AND
%nonassoc NOT

%start main
%type <Types.terme_ou_formule> main

%%

main:
| e=expr EOF { F e }
| l=separated_list(SEMI, expr) EOF {
  F (Hyp l)
}
;

expr_simple:
| x=IDENT           { (Variable x) }
;

expr:
| LPAR e=expr RPAR       { e }
| EMPTY                  { Vide }
| e=expr_simple          {
    begin match e with
    | Variable x -> Predicat (x, [])
    | _          -> failwith "error"
    end
}
| NOT e=expr              { Not(e) }
| e1=expr AND e2=expr     { And(e1, e2) }
| e1=expr OR  e2=expr     { Or(e1, e2) }
| e1=expr FLECHE e2=expr  { Implies(e1, e2) }
;
