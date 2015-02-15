{
  open Parser

  let trim_string hd_offset tl_offset s =
    String.sub s hd_offset ((String.length s) - tl_offset - 1);;

  let newline =
    Ast.update_newline ;;

  let ss lexbuf =
    let s = Lexing.lexeme lexbuf in
    let _ = Ast.update_pos (String.length s) in
    s
    ;;

}

let dbl_str_re = (['\"']([^'\"'])*['\"'])
let sgl_str_re = (['\'']([^'\''])*['\''])
let ident_chars_re = (['a'-'z']|['A'-'Z']|['_'])(['0'-'9']|['a'-'z']|['A'-'Z']|['_'])*


rule main = parse
    [' ' '\t' '\r'] { main lexbuf }
  | ['\n'] { newline; main lexbuf }
  | "require" { REQUIRE }
  | "let" { LET }
  | "var" { VAR }
  | "def" { DEF }
  | "return" { RETURN }
  | '+' { PLUS }
  | '-' { MINUS }
  | '*' { TIMES }
  | '/' { DIV }
  | ['1'-'9']?['0'-'9']+ { INT (int_of_string (ss lexbuf)) }
  | (['1'-'9']?['0'-'9']+['.']['0'-'9']+)|(['.']['0'-'9']+) { FLOAT (float_of_string (ss lexbuf)) }
  | dbl_str_re { DBL_STR_LITERAL (trim_string 1 1 (ss lexbuf)) }
  | sgl_str_re { SGL_STR_LITERAL (trim_string 1 1 (ss lexbuf)) }
  | ident_chars_re { IDENT_CHARS (ss lexbuf) }
  | ['#'][^ '\n' '\r'] { main lexbuf }
  | '(' { L_PAREN }
  | ')' { R_PAREN }
  | '[' { LA_PAREN }
  | ']' { RA_PAREN }
  | '{' { LB_PAREN }
  | '}' { RB_PAREN }
  | '<' { LT }
  | '>' { GT }
  | '=' { EQUAL }
  | "==" { DBL_EQUAL }
  | ',' { COMMA }
  | '.' { DOT }
  | ':' { COLON }
  | ';' { SEMICOLON }
  | eof { EOF }
