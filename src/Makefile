SRC_DIR=.
DIST_DIR=../dist
CC=gcc
CFLAGS=-Wall -lstdc++ -O2

OCAMLOPT=ocamlopt
OCAMLC=ocamlc
OCAML_FLAGS=

SOURCES=parser.ml

all: compile clean-generated

compile: parser

parser: $(SOURCES)
	$(OCAMLOPT) $(SOURCES) -o $(DIST_DIR)/hien

clean-generated:
	rm -rf $(SRC_DIR)/*.cmi $(SRC_DIR)/*.cmx $(SRC_DIR)/*.o

clean:
	rm -rf $(SRC_DIR)/*.cmi $(SRC_DIR)/*.cmx $(SRC_DIR)/*.o $(DIST_DIR)/*
