open Printf

type ast =
  | UNDEFINED
  | NO_CODE
  | REQUIRE of string
  | LET_DECLARE of (string * ast) list
  | VAR_DECLARE of (string * ast) list
  | STRING of string
  | INT of int
  | FLOAT of float
  | TRUE
  | FALSE
  | ANON_FUNC of (string * string) list * ast list
  | FUNCTION_DEF of string * (string * string) list * ast list
  | RETURN of ast
  | PAREN of ast list
  | VARIABLE of string
  | FUNC_CALL of ast * ast list
  | METHOD_VALUE of ast * ast
  | BIN_OP of string * ast * ast
  | EXPR_LIST of ast list
;;

let rec print_ast e =
  match e with
    UNDEFINED -> print_string "UNDEFINED "
  | NO_CODE -> print_string "NO_CODE "
  | REQUIRE(lib) -> printf "REQUIRE(\"%s\") " lib
  | LET_DECLARE(lst) ->
    print_string "LET_DECLARE(";
    List.iter (fun stmt -> print_string ("'"^(fst stmt)^"': "); print_ast (snd stmt); print_string "\b; ") (lst);
    print_string "\b) "
  | VAR_DECLARE(lst) ->
    print_string "VAR_DECLARE(";
    List.iter (fun stmt -> print_string ("'"^(fst stmt)^"': "); print_ast (snd stmt); print_string "\b; ") (lst);
    print_string "\b) "
  | STRING(s) -> printf "STRING(\"%s\") " s
  | INT(i) -> printf "INT(%d) " i
  | FLOAT(f) -> printf "FLOAT(%f) " f
  | TRUE -> print_string "TRUE "
  | FALSE -> print_string "FALSE "
  | ANON_FUNC(args, exprs) ->
    print_string "ANON_FUNC([";
    List.iter (fun t -> print_string ((fst t) ^ ":" ^ (snd t) ^ ", ")) args;
    print_string "\b\b], ";
    List.iter (fun e -> print_ast e; print_string "\b; ") exprs;
    print_string "\b) "
  | FUNCTION_DEF(funcname, args, exprs) -> 
    printf "FUNCTION_DEF(\"%s\", [" funcname;
    List.iter (fun t -> print_string ((fst t) ^ ":" ^ (snd t) ^ ", ")) args;
    print_string "\b\b], ";
    List.iter (fun e -> print_ast e; print_string "\b; ") exprs;
    print_string "\b) "
  | RETURN(e) ->
    print_string "RETURN( ";
    print_ast e;
    print_string ") "
  | PAREN(exprs) ->
    print_string "PAREN( ";
    List.iter (fun e -> print_ast e) exprs;
    print_string "\b) "
  | VARIABLE(s) ->
    printf "VARIABLE('%s') " s;
  | FUNC_CALL(e, args) ->
    print_string "FUNC_CALL(";
    print_ast e;
    print_string "\b, [ ";
    List.iter (fun e -> print_ast e; print_string "\b, ") args;
    print_string "\b\b ]) "
  | METHOD_VALUE(e1,e2) ->
    print_string "METHOD_VALUE(";
    print_ast e1;
    print_string ", ";
    print_ast e2;
    print_string ") "
  | BIN_OP(op_name, e1, e2) ->
    printf "BIN_OP('%s', " op_name;
    print_ast e1;
    print_string "\b, ";
    print_ast e2;
    print_string "\b) "
  | EXPR_LIST(lst) ->
    print_string "EXPR_LIST([ ";
    List.iter (fun e -> print_ast e; print_string "\b, ") lst;
    print_string "\b\b ]) "
;;

let pos_num = ref 0;;
let line_num = ref 0;;

let update_newline =
  pos_num := 0;
  line_num := !line_num + 1
;;

let update_pos len =
  pos_num := !pos_num + len
;;
  
let debug_let lst =
  print_string "[";
  List.iter (fun tp -> printf "(%s, " (fst tp); print_ast (snd tp); print_string "\b)") lst;
  print_string "]"
 ;;