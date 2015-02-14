open Printf

type ast =
  | UNDEFINED
  | REQUIRE of string
  | LET of (string * ast) list
  | VAR of (string * ast) list
  | STRING of string
  | INT of int
  | FLOAT of float
  | FUNCTION of string * string list * ast list
  | RETURN of ast
  | PAREN of ast list
;;

let rec print_ast e =
  match e with
    UNDEFINED -> print_string "UNDEFINED "
  | REQUIRE(lib) -> printf "REQUIRE(\"%s\") " lib
  | LET(lst) ->
    print_string "LET(";
    List.iter (fun stmt -> print_string ((fst stmt) ^ " = "); print_ast (snd stmt); print_string "\b; ") (lst);
    print_string "\b) "
  | VAR(lst) ->
    print_string "VAR(";
    List.iter (fun stmt -> print_string ((fst stmt) ^ " = "); print_ast (snd stmt); print_string "\b; ") (lst);
    print_string "\b) "
  | STRING(s) -> printf "STRING(\"%s\") " s
  | INT(i) -> printf "INT(%d) " i
  | FLOAT(f) -> printf "FLOAT(%f) " f
  | FUNCTION(funcname, args, exprs) -> 
    printf "FUNCTION(\"%s\"," funcname;
    List.iter (fun name -> print_string (name ^ "; ")) args;
    print_string ", ";
    List.iter (fun e -> print_ast e; print_string "; ") exprs;
    print_string "\b) "
  | RETURN(e) ->
    print_string "RETURN( ";
    print_ast e;
    print_string "\b) "
  | PAREN(exprs) ->
    print_string "PAREN( ";
    List.iter (fun e -> print_ast e) exprs;
    print_string "\b) "
;;

let debug_let lst =
  print_string "[";
  List.iter (fun tp -> printf "(%s, " (fst tp); print_ast (snd tp); print_string "\b)") lst;
  print_string "]"
 ;;