caml_o = ocamlc

all : main

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

clean :
	rm -rf *.cmo
	rm -rf *.cmi
	rm main

run :
	./main