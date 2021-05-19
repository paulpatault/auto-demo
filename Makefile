all :
	dune build src/main.exe
test :
	dune runtest
exec :
	dune exec src/main.exe
clean :
	dune clean
