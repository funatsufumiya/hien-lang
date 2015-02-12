open Printf

type ('a, 'b) t =
  | Error of string * int
  | Tuple of 'a * 'b
  ;;

let rec lexer s i =
  Error("not implemented", i)
  ;;

let detect token =
  [];;

let parser s =
  let rec parser_impl s i ast =
    let t = lexer s i in
    match t with
      Error (message, line) -> printf "Error %s (line %d)" message line
    | Tuple (token, new_index) ->
      let new_ast = detect(token) in
      parser_impl s new_index new_ast in
  parser_impl s 0 []
  ;;
