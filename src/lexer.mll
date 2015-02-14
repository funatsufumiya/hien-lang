{
  open Parser
}

let dbl_str_re = (['\"']([^'\"'])*['\"'])
let sgl_str_re = (['\'']([^'\''])*['\''])
let ident_chars_re = (['a'-'z']|['A'-'Z']|['_'])(['0'-'9']|['a'-'z']|['A'-'Z']|['_'])*


rule main = parse
    [' ' '\t' '\n'] { main lexbuf }
  | "require" { REQUIRE }
  | "let" { LET }
  | "var" { VAR }
  | "def" { DEF }
  | "return" { RETURN }
  | ['1'-'9']?['0'-'9']+ { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | (['1'-'9']?['0'-'9']+['.']['0'-'9']+)|(['.']['0'-'9']+) { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
  | dbl_str_re { DBL_STR_LITERAL (String.sub (Lexing.lexeme lexbuf) 1 ((String.length (Lexing.lexeme lexbuf)) - 2)) }
  | sgl_str_re { SGL_STR_LITERAL (String.sub (Lexing.lexeme lexbuf) 1 ((String.length (Lexing.lexeme lexbuf)) - 2)) }
  | ident_chars_re { IDENT_CHARS (Lexing.lexeme lexbuf) }
  | '(' { L_PAREN }
  | ')' { R_PAREN }
  | '[' { LA_PAREN }
  | ']' { RA_PAREN }
  | '{' { LB_PAREN }
  | '}' { RB_PAREN }
  | '=' { EQUAL }
  | "==" { DBL_EQUAL }
  | ',' { COMMA }
  | '.' { DOT }
  | ':' { COLON }
  | ';' { SEMICOLON }
  | eof { EOF }