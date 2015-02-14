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

let print_parse_result lst =
  let rec print_ast e =
    match e with
      UNDEFINED -> print_string "UNDEFINED "
    | REQUIRE(lib) -> printf "REQUIRE(\"%s\") " lib
    | LET(lst) ->
      print_string "LET(";
      List.iter (fun stmt -> print_string ((fst stmt) ^ " = "); print_ast (snd stmt); print_string "\b; ") (lst);
      print_string ") "
    | VAR(lst) ->
      print_string "VAR(";
      List.iter (fun stmt -> print_string ((fst stmt) ^ " = "); print_ast (snd stmt); print_string "\b; ") (lst);
      print_string ") "
    | STRING(s) -> printf "STRING(\"%s\") " s
    | INT(i) -> printf "INT(%d) " i
    | FLOAT(f) -> printf "FLOAT(%f) " f
    | FUNCTION(funcname, args, exprs) -> 
      printf "FUNCTION(\"%s\"," funcname;
      List.iter (fun name -> print_string (name ^ "; ")) args;
      print_string ", ";
      List.iter (fun e -> print_ast e; print_string "; ") exprs;
      print_string ") "
    | RETURN(e) ->
      print_string "RETURN( ";
      print_ast e;
      print_string ") "
    | PAREN(exprs) ->
      print_string "PAREN( ";
      List.iter (fun e -> print_ast e) exprs;
      print_string ") " in
  List.iter (fun t -> print_ast (fst t); print_string "\n") lst
;;
