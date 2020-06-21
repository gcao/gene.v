bin/gene: main.v gene/*.v
	rm -f ./bin/gene
	mkdir -p ./bin
	v -keep_c -verbose -vpath $(PWD)/ -o ./bin/gene ./main.v

default: bin/gene
