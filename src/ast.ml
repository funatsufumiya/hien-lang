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
