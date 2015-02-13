#module Ast =
# struct
#   type ast =
#     | UNDEFINED
#     | REQUIRE of string
#     | LET of declareMap list
#     | VAR of declareMap list
#     | STRING of string
#     | INT of int
#     | FLOAT of float
#     | FUNCTION of string * string list * ast list
#   type declareMap = {name: string; expr: ast}
# end;;


module Ast :
  sig
    type ast = REQUIRE of string
  end;;