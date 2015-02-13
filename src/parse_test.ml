let parse s =
  let lexbuf = Dyp.from_string (Parser.pp ()) s in
  let lst = (Parser.main lexbuf) in
  Ast.print_parse_result lst
;;

parse "let a = 3";;
parse "var this_is_test = 3.45";;