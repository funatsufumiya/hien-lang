let parse s =
  let lexbuf = Dyp.from_string (Parser.pp ()) s in
  let lst = (Parser.main lexbuf) in
  Ast.print_parse_result lst
;;

let _ = 
  parse "let an_int = 3";
  parse "let intVal = 463";
  parse "let intVal2 = (463)";
  parse "let this_is_test = 3.45";
  parse "var a = \"Apple\"";
  parse "var this_is_test = 3.45";
  parse "var s = \"the string %$^&\""
;;