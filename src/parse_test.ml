let parse label s =
  let lexbuf = Dyp.from_string (Parser.pp ()) s in
  let lst = (Parser.main lexbuf) in
  print_string ("- " ^ label ^ ": \t");
  Ast.print_parse_result lst
;;

let _ = 
  parse "let 3" "let an_int = 3";
  parse "let 463" "let intVal = 463";
  parse "let (463)" "let intVal2 = (463)";

  parse "let 3.45" "let this_is_test = 3.45";
  parse "var .65" "var this_is_test2 = .65";

  parse "var string" "var s = \"the string %$^&\"";
  parse "var multi-string" "var a = \"Apple\", b = \"Banana\""
;;