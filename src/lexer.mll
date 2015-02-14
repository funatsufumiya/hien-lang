{
  open Parser
}

rule main = parse
    [' ' '\t' '\n'] { main lexbuf }
  | ['1'-'9']?['0'-'9']+ { INT (int_of_string (Lexing.lexeme lexbuf)) }
  | (['1'-'9']?['0'-'9']+['.']['0'-'9']+)|(['.']['0'-'9']+) { FLOAT (float_of_string (Lexing.lexeme lexbuf)) }
  | ([^'"']|['\\']['"']) { DBL_STRCH (Lexing.lexeme lexbuf) }
  | ([^''']|['\\'][''']) { SGL_STRCH (Lexing.lexeme lexbuf) }
  | (['a'-'z']|['A'-'Z']|'_')(['0'-'9']|['a'-'z']|['A'-'Z']|'_')* { IDENT_CHARS (Lexing.lexeme lexbuf) }
  | '"' { DBL_QUOTE }
  | '\'' { SGL_QUOTE }
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
  | "require" { REQUIRE }
  | "let" { LET }
  | "var" { VAR }
  | "def" { DEF }
  | "return" { RETURN }