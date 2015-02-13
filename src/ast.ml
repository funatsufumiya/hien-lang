#module Ast =
# struct
#   type ast =
#     REQUIRE of string
# end;;


module Ast :
  sig
    type ast = REQUIRE of string
  end;;