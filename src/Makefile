caml_o = ocamlc

all : main test

main : types.cmo printer.cmo core.cmo main.cmo
	$(caml_o) $^ -o $@

main.cmo : main.ml
	$(caml_o) $^ -c

core.cmo : core.ml
	$(caml_o) $^ -c

printer.cmo : types.ml printer.ml
	$(caml_o) $^ -c

types.cmo : types.ml
	$(caml_o) $^ -c

test : printer.cmo lexer.cmo parser.cmo types.cmo test.cmo
	$(caml_o) $^ -o $@

test.cmo :types.ml test.ml
	$(caml_o) $^ -c

lexer.ml : types.ml lexer.mll 
	ocamllex lexer.mll

lexer.cmo : parser.mli lexer.ml 
	$(caml_o) $^ -c

parser.mli : types.ml parser.mly  
	menhir parser.mly    

parser.cmo : parser.mli
	ocamlc -c parser.mli
	ocamlc -c parser.ml

clean :
	rm -rf *.cmo
	rm -rf *.cmi
	rm main test

cleanup :
	rm -rf *.cmo
	rm -rf *.cmi

run :
	./main
	