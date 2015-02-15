
let parse s =
  let _ = print_string ("- '" ^ s ^ "': \n\t") in
  let lexbuf = Lexing.from_string s in
  let ast = Parser.main Lexer.main lexbuf in
  Ast.print_ast ast;
  print_string "\n"
;;

let _ = 
  parse "let an_int = 3";
  parse "let intVal = 463";
  parse "let intVal2 = (463)";

  parse "let this_is_test = 3.45";
  parse "var this_is_test2 = .65";

  parse "var s = \"the string %$^&\"";
  parse "var a = \"Apple\", b = \"Banana\"";

  parse "def fn1(n:Int){ return max(n, 3) }";

  parse "let a = sqrt(4)";
  parse "let a = 1 + 2";
  parse "var n = 3\n let a = max(5,10) + n";

  parse "let result = (n:Int => n*2)(5)";

  parse "# this is comment"
;;