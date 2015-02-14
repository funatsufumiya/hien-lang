
let parse s =
  let lexbuf = Lexing.from_string s in
  let ast = Parser.main Lexer.main lexbuf in
  let _ = print_string ("- '" ^ s ^ "': \n\t") in
  Ast.print_ast ast
;;

let _ = 
  parse "let an_int = 3";
  parse "let intVal = 463";
  parse "let intVal2 = (463)";

  parse "let this_is_test = 3.45";
  parse "var this_is_test2 = .65";

  parse "var s = \"the string %$^&\"";
  parse "var a = \"Apple\", b = \"Banana\""
;;