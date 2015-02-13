
let _ =
  if "20120619" <> Dyp.version
  then (Printf.fprintf stderr
    "version mismatch, dypgen version 20120619 and dyplib version %s\n" Dyp.version;
  exit 2)

module Dyp_symbols =
struct
  let get_token_name () = 0
  let str_token _ = failwith "str_token must not be called with dypgen lexers"
  let ter_string_list = [
      ("COLON",0);
      ("DIV",1);
      ("DQUOTE",2);
      ("DSTRCH",3);
      ("EQUAL",4);
      ("FLOAT",5);
      ("GT",6);
      ("INT",7);
      ("LBLOCK",8);
      ("LPAREN",9);
      ("LT",10);
      ("MINUS",11);
      ("PLUS",12);
      ("RBLOCK",13);
      ("RPAREN",14);
      ("SQUOTE",15);
      ("SSTRCH",16);
      ("TIMES",17);
      ("__dypgen_layout",18);]
end

type ('dypgen__Obj_DSTRCH, 'dypgen__Obj_FLOAT, 'dypgen__Obj_INT, 'dypgen__Obj_SSTRCH, 'dypgen__Obj_anon_func_def, 'dypgen__Obj_array_def, 'dypgen__Obj_class_def, 'dypgen__Obj_dstr_contents, 'dypgen__Obj_expr, 'dypgen__Obj_function_def, 'dypgen__Obj_if_def, 'dypgen__Obj_let_def, 'dypgen__Obj_macro_def, 'dypgen__Obj_main, 'dypgen__Obj_match_def, 'dypgen__Obj_method_call_def, 'dypgen__Obj_record_def, 'dypgen__Obj_require_def, 'dypgen__Obj_sstr_contents, 'dypgen__Obj_statement_def, 'dypgen__Obj_str, 'dypgen__Obj_tuple_def, 'dypgen__Obj_var_def, 'dypgen__Obj_while_def) obj =
  | Lexeme_matched of string
  | Obj_COLON
  | Obj_DIV
  | Obj_DQUOTE
  | Obj_DSTRCH of 'dypgen__Obj_DSTRCH
  | Obj_EQUAL
  | Obj_FLOAT of 'dypgen__Obj_FLOAT
  | Obj_GT
  | Obj_INT of 'dypgen__Obj_INT
  | Obj_LBLOCK
  | Obj_LPAREN
  | Obj_LT
  | Obj_MINUS
  | Obj_PLUS
  | Obj_RBLOCK
  | Obj_RPAREN
  | Obj_SQUOTE
  | Obj_SSTRCH of 'dypgen__Obj_SSTRCH
  | Obj_TIMES
  | Obj___dypgen_layout
  | Obj_anon_func_def of 'dypgen__Obj_anon_func_def
  | Obj_array_def of 'dypgen__Obj_array_def
  | Obj_class_def of 'dypgen__Obj_class_def
  | Obj_dstr_contents of 'dypgen__Obj_dstr_contents
  | Obj_expr of 'dypgen__Obj_expr
  | Obj_function_def of 'dypgen__Obj_function_def
  | Obj_if_def of 'dypgen__Obj_if_def
  | Obj_let_def of 'dypgen__Obj_let_def
  | Obj_macro_def of 'dypgen__Obj_macro_def
  | Obj_main of 'dypgen__Obj_main
  | Obj_match_def of 'dypgen__Obj_match_def
  | Obj_method_call_def of 'dypgen__Obj_method_call_def
  | Obj_record_def of 'dypgen__Obj_record_def
  | Obj_require_def of 'dypgen__Obj_require_def
  | Obj_sstr_contents of 'dypgen__Obj_sstr_contents
  | Obj_statement_def of 'dypgen__Obj_statement_def
  | Obj_str of 'dypgen__Obj_str
  | Obj_tuple_def of 'dypgen__Obj_tuple_def
  | Obj_var_def of 'dypgen__Obj_var_def
  | Obj_while_def of 'dypgen__Obj_while_def
  | Dypgen__dummy_obj_cons

module Dyp_symbols_array =
struct
  let token_name_array =
  [|"COLON";
    "DIV";
    "DQUOTE";
    "DSTRCH";
    "EQUAL";
    "FLOAT";
    "GT";
    "INT";
    "LBLOCK";
    "LPAREN";
    "LT";
    "MINUS";
    "PLUS";
    "RBLOCK";
    "RPAREN";
    "SQUOTE";
    "SSTRCH";
    "TIMES";
    "__dypgen_layout"|]
  let nt_cons_list =
  [
    ("anon_func_def",5);
    ("array_def",6);
    ("class_def",7);
    ("dstr_contents",8);
    ("expr",9);
    ("function_def",10);
    ("if_def",11);
    ("let_def",12);
    ("macro_def",13);
    ("main",14);
    ("match_def",15);
    ("method_call_def",16);
    ("record_def",17);
    ("require_def",18);
    ("sstr_contents",19);
    ("statement_def",20);
    ("str",21);
    ("tuple_def",22);
    ("var_def",23);
    ("while_def",24)]
  let str_cons o = match o with
    | Lexeme_matched _ -> "Lexeme_matched"
    | Obj_DSTRCH _ -> "Obj_DSTRCH"
    | Obj_FLOAT _ -> "Obj_FLOAT"
    | Obj_INT _ -> "Obj_INT"
    | Obj_SSTRCH _ -> "Obj_SSTRCH"
    | Obj_anon_func_def _ -> "Obj_anon_func_def"
    | Obj_array_def _ -> "Obj_array_def"
    | Obj_class_def _ -> "Obj_class_def"
    | Obj_dstr_contents _ -> "Obj_dstr_contents"
    | Obj_expr _ -> "Obj_expr"
    | Obj_function_def _ -> "Obj_function_def"
    | Obj_if_def _ -> "Obj_if_def"
    | Obj_let_def _ -> "Obj_let_def"
    | Obj_macro_def _ -> "Obj_macro_def"
    | Obj_main _ -> "Obj_main"
    | Obj_match_def _ -> "Obj_match_def"
    | Obj_method_call_def _ -> "Obj_method_call_def"
    | Obj_record_def _ -> "Obj_record_def"
    | Obj_require_def _ -> "Obj_require_def"
    | Obj_sstr_contents _ -> "Obj_sstr_contents"
    | Obj_statement_def _ -> "Obj_statement_def"
    | Obj_str _ -> "Obj_str"
    | Obj_tuple_def _ -> "Obj_tuple_def"
    | Obj_var_def _ -> "Obj_var_def"
    | Obj_while_def _ -> "Obj_while_def"
    | _ -> failwith "str_cons, unexpected constructor"
  let cons_array = [|
    "Lexeme_matched";
    "Obj_DSTRCH";
    "Obj_FLOAT";
    "Obj_INT";
    "Obj_SSTRCH";
    "Obj_anon_func_def";
    "Obj_array_def";
    "Obj_class_def";
    "Obj_dstr_contents";
    "Obj_expr";
    "Obj_function_def";
    "Obj_if_def";
    "Obj_let_def";
    "Obj_macro_def";
    "Obj_main";
    "Obj_match_def";
    "Obj_method_call_def";
    "Obj_record_def";
    "Obj_require_def";
    "Obj_sstr_contents";
    "Obj_statement_def";
    "Obj_str";
    "Obj_tuple_def";
    "Obj_var_def";
    "Obj_while_def";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
    "";
  |]
  let entry_points = [
    "main";]
end

let dypgen_lexbuf_position lexbuf = Dyp.dyplex_lexbuf_position lexbuf

module Dyp_aux_functions =
struct
  let get_token_value _ = Dypgen__dummy_obj_cons
  let cons_table = Dyp.Tools.hashtbl_of_array Dyp_symbols_array.cons_array
end

module Dyp_priority_data =
struct
  let relations = [
  ]
end

let global_data = ()
let local_data = ()
let global_data_equal = (==)
let local_data_equal = (==)

let dyp_merge_Lexeme_matched = Dyp.Tools.keep_zero
let dyp_merge_Obj_DSTRCH = Dyp.Tools.keep_zero
let dyp_merge_Obj_FLOAT = Dyp.Tools.keep_zero
let dyp_merge_Obj_INT = Dyp.Tools.keep_zero
let dyp_merge_Obj_SSTRCH = Dyp.Tools.keep_zero
let dyp_merge_Obj_anon_func_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_array_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_class_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_dstr_contents = Dyp.Tools.keep_zero
let dyp_merge_Obj_expr = Dyp.Tools.keep_zero
let dyp_merge_Obj_function_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_if_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_let_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_macro_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_main = Dyp.Tools.keep_zero
let dyp_merge_Obj_match_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_method_call_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_record_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_require_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_sstr_contents = Dyp.Tools.keep_zero
let dyp_merge_Obj_statement_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_str = Dyp.Tools.keep_zero
let dyp_merge_Obj_tuple_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_var_def = Dyp.Tools.keep_zero
let dyp_merge_Obj_while_def = Dyp.Tools.keep_zero
let dyp_merge = Dyp.keep_one
let dypgen_match_length = `shortest
let dypgen_choose_token = `first
let dypgen_keep_data = `both
let dypgen_use_rule_order = false
let dypgen_use_all_actions = false

let __dypgen_ra_list, __dypgen_main_lexer, __dypgen_aux_lexer =
[
(("main",[Dyp.Non_ter ("expr",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_expr ( (
(_:'dypgen__Obj_expr)
# 252                "./parser.ml"
 as _1))] -> Obj_main 
# 28 "./parser.dyp"
(
         ( _1 ):'dypgen__Obj_main)
# 257                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("require_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_require_def ( (
(_:'dypgen__Obj_require_def)
# 265                "./parser.ml"
 as _1))] -> Obj_expr 
# 31 "./parser.dyp"
(
                ( _1 ):'dypgen__Obj_expr)
# 270                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("var_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_var_def ( (
(_:'dypgen__Obj_var_def)
# 278                "./parser.ml"
 as _1))] -> Obj_expr 
# 32 "./parser.dyp"
(
            ( _1 ):'dypgen__Obj_expr)
# 283                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("let_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_let_def ( (
(_:'dypgen__Obj_let_def)
# 291                "./parser.ml"
 as _1))] -> Obj_expr 
# 33 "./parser.dyp"
(
            ( _1 ):'dypgen__Obj_expr)
# 296                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("function_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_function_def ( (
(_:'dypgen__Obj_function_def)
# 304                "./parser.ml"
 as _1))] -> Obj_expr 
# 34 "./parser.dyp"
(
                 ( _1 ):'dypgen__Obj_expr)
# 309                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("anon_func_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_anon_func_def ( (
(_:'dypgen__Obj_anon_func_def)
# 317                "./parser.ml"
 as _1))] -> Obj_expr 
# 35 "./parser.dyp"
(
                  ( _1 ):'dypgen__Obj_expr)
# 322                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("class_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_class_def ( (
(_:'dypgen__Obj_class_def)
# 330                "./parser.ml"
 as _1))] -> Obj_expr 
# 36 "./parser.dyp"
(
              ( _1 ):'dypgen__Obj_expr)
# 335                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("record_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_record_def ( (
(_:'dypgen__Obj_record_def)
# 343                "./parser.ml"
 as _1))] -> Obj_expr 
# 37 "./parser.dyp"
(
               ( _1 ):'dypgen__Obj_expr)
# 348                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("macro_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_macro_def ( (
(_:'dypgen__Obj_macro_def)
# 356                "./parser.ml"
 as _1))] -> Obj_expr 
# 38 "./parser.dyp"
(
              ( _1 ):'dypgen__Obj_expr)
# 361                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("while_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_while_def ( (
(_:'dypgen__Obj_while_def)
# 369                "./parser.ml"
 as _1))] -> Obj_expr 
# 39 "./parser.dyp"
(
              ( _1 ):'dypgen__Obj_expr)
# 374                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("if_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_if_def ( (
(_:'dypgen__Obj_if_def)
# 382                "./parser.ml"
 as _1))] -> Obj_expr 
# 40 "./parser.dyp"
(
           ( _1 ):'dypgen__Obj_expr)
# 387                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("match_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_match_def ( (
(_:'dypgen__Obj_match_def)
# 395                "./parser.ml"
 as _1))] -> Obj_expr 
# 41 "./parser.dyp"
(
              ( _1 ):'dypgen__Obj_expr)
# 400                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("method_call_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_method_call_def ( (
(_:'dypgen__Obj_method_call_def)
# 408                "./parser.ml"
 as _1))] -> Obj_expr 
# 42 "./parser.dyp"
(
                    ( _1 ):'dypgen__Obj_expr)
# 413                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("array_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_array_def ( (
(_:'dypgen__Obj_array_def)
# 421                "./parser.ml"
 as _1))] -> Obj_expr 
# 43 "./parser.dyp"
(
              ( _1 ):'dypgen__Obj_expr)
# 426                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("tuple_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_tuple_def ( (
(_:'dypgen__Obj_tuple_def)
# 434                "./parser.ml"
 as _1))] -> Obj_expr 
# 44 "./parser.dyp"
(
              ( _1 ):'dypgen__Obj_expr)
# 439                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("expr",[Dyp.Non_ter ("statement_def",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_statement_def ( (
(_:'dypgen__Obj_statement_def)
# 447                "./parser.ml"
 as _1))] -> Obj_expr 
# 45 "./parser.dyp"
(
                  ( _1 ):'dypgen__Obj_expr)
# 452                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("require_def",[Dyp.Regexp (Dyp.RE_String "require");Dyp.Non_ter ("str",Dyp.No_priority )],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ Lexeme_matched _1;Obj_str ( (
(_:'dypgen__Obj_str)
# 460                "./parser.ml"
 as _2))] -> Obj_require_def 
# 48 "./parser.dyp"
(
                  ( Ast.REQUIRE(_2) ):'dypgen__Obj_require_def)
# 465                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("str",[Dyp.Ter "DQUOTE";Dyp.Non_ter ("dstr_contents",Dyp.No_priority );Dyp.Ter "DQUOTE"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Obj_dstr_contents ( (
(_:'dypgen__Obj_dstr_contents)
# 473                "./parser.ml"
 as _2)); _3] -> Obj_str 
(
(_3):'dypgen__Obj_str)
# 477                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("str",[Dyp.Ter "SQUOTE";Dyp.Non_ter ("sstr_contents",Dyp.No_priority );Dyp.Ter "SQUOTE"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [ _1;Obj_sstr_contents ( (
(_:'dypgen__Obj_sstr_contents)
# 485                "./parser.ml"
 as _2)); _3] -> Obj_str 
(
(_3):'dypgen__Obj_str)
# 489                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dstr_contents",[Dyp.Non_ter ("dstr_contents",Dyp.No_priority );Dyp.Ter "DSTRCH"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_dstr_contents ( (
(_:'dypgen__Obj_dstr_contents)
# 497                "./parser.ml"
 as _1));Obj_DSTRCH  (
(_:'dypgen__Obj_DSTRCH)
# 500                "./parser.ml"
 as _2)] -> Obj_dstr_contents 
(
(_2):'dypgen__Obj_dstr_contents)
# 504                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("dstr_contents",[Dyp.Ter "DSTRCH"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_DSTRCH  (
(_:'dypgen__Obj_DSTRCH)
# 512                "./parser.ml"
 as _1)] -> Obj_dstr_contents 
(
(_1):'dypgen__Obj_dstr_contents)
# 516                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("sstr_contents",[Dyp.Non_ter ("sstr_contents",Dyp.No_priority );Dyp.Ter "SSTRCH"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_sstr_contents ( (
(_:'dypgen__Obj_sstr_contents)
# 524                "./parser.ml"
 as _1));Obj_SSTRCH  (
(_:'dypgen__Obj_SSTRCH)
# 527                "./parser.ml"
 as _2)] -> Obj_sstr_contents 
(
(_2):'dypgen__Obj_sstr_contents)
# 531                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])
;
(("sstr_contents",[Dyp.Ter "SSTRCH"],"default_priority",[]),
Dyp.Dypgen_action (fun __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl ->
(Dyp.Tools.transform_action (fun dyp __dypgen_av_list -> (match (__dypgen_av_list) with [Obj_SSTRCH  (
(_:'dypgen__Obj_SSTRCH)
# 539                "./parser.ml"
 as _1)] -> Obj_sstr_contents 
(
(_1):'dypgen__Obj_sstr_contents)
# 543                "./parser.ml"
,[] | _ -> raise Dyp.Giveup))) __dypgen_ol __dypgen_pos __dypgen_posl __dypgen_gd __dypgen_ld __dypgen_lld __dypgen_di __dypgen_p __dypgen_nl),
[])],

([
  ("__dypgen_layout",(Dyp.RE_Char_set [(' ',' ');('\t','\t')]));
  ("INT",(Dyp.RE_Seq [Dyp.RE_Option (Dyp.RE_Char_set [('1','9')]);Dyp.RE_Plus (Dyp.RE_Char_set [('0','9')])]));
  ("FLOAT",(Dyp.RE_Seq [Dyp.RE_Seq [Dyp.RE_Option (Dyp.RE_Char_set [('1','9')]);Dyp.RE_Star (Dyp.RE_Char_set [('0','9')])];Dyp.RE_Option (Dyp.RE_Seq [Dyp.RE_Char '.';Dyp.RE_Plus (Dyp.RE_Char_set [('0','9')])])]));
  ("DQUOTE",(Dyp.RE_String "\""));
  ("SQUOTE",(Dyp.RE_String "'"));
  ("DSTRCH",(Dyp.RE_Alt [Dyp.RE_Char_set_exclu [('"','"')];Dyp.RE_Seq [Dyp.RE_Char_set [('\\','\\')];Dyp.RE_Char_set [('"','"')]]]));
  ("SSTRCH",(Dyp.RE_Alt [Dyp.RE_Char_set_exclu [('\'','\'')];Dyp.RE_Seq [Dyp.RE_Char_set [('\\','\\')];Dyp.RE_Char_set [('\'','\'')]]]));
  ("PLUS",(Dyp.RE_String "+"));
  ("MINUS",(Dyp.RE_String "-"));
  ("TIMES",(Dyp.RE_String "*"));
  ("DIV",(Dyp.RE_String "/"));
  ("EQUAL",(Dyp.RE_String "="));
  ("COLON",(Dyp.RE_String ":"));
  ("LPAREN",(Dyp.RE_String "("));
  ("RPAREN",(Dyp.RE_String ")"));
  ("LT",(Dyp.RE_String "<"));
  ("GT",(Dyp.RE_String ">"));
  ("LBLOCK",(Dyp.RE_String "{"));
  ("RBLOCK",(Dyp.RE_String "}"))],
[
  18,((fun lexbuf -> Obj___dypgen_layout));
  7,((fun lexbuf -> Obj_INT
# 6 "./parser.dyp"
(
                            ( int_of_string (Dyp.lexeme lexbuf) ):'dypgen__Obj_INT)
# 573                "./parser.ml"
));
  5,((fun lexbuf -> Obj_FLOAT
# 7 "./parser.dyp"
(
                                                ( float_of_string (Dyp.lexeme lexbuf) ):'dypgen__Obj_FLOAT)
# 579                "./parser.ml"
));
  2,((fun lexbuf -> Obj_DQUOTE));
  15,((fun lexbuf -> Obj_SQUOTE));
  3,((fun lexbuf -> Obj_DSTRCH
# 10 "./parser.dyp"
(
                               ( Dyp.lexme lexbuf ):'dypgen__Obj_DSTRCH)
# 587                "./parser.ml"
));
  16,((fun lexbuf -> Obj_SSTRCH
# 11 "./parser.dyp"
(
                               ( Dyp.lexme lexbuf ):'dypgen__Obj_SSTRCH)
# 593                "./parser.ml"
));
  12,((fun lexbuf -> Obj_PLUS));
  11,((fun lexbuf -> Obj_MINUS));
  17,((fun lexbuf -> Obj_TIMES));
  1,((fun lexbuf -> Obj_DIV));
  4,((fun lexbuf -> Obj_EQUAL));
  0,((fun lexbuf -> Obj_COLON));
  9,((fun lexbuf -> Obj_LPAREN));
  14,((fun lexbuf -> Obj_RPAREN));
  10,((fun lexbuf -> Obj_LT));
  6,((fun lexbuf -> Obj_GT));
  8,((fun lexbuf -> Obj_LBLOCK));
  13,((fun lexbuf -> Obj_RBLOCK))]),

[]

let __dypgen_regexp_decl = []

let dyp_merge_Lexeme_matched l =
  match dyp_merge_Lexeme_matched l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_DSTRCH l =
  match dyp_merge_Obj_DSTRCH l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_FLOAT l =
  match dyp_merge_Obj_FLOAT l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_INT l =
  match dyp_merge_Obj_INT l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_SSTRCH l =
  match dyp_merge_Obj_SSTRCH l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_anon_func_def l =
  match dyp_merge_Obj_anon_func_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_array_def l =
  match dyp_merge_Obj_array_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_class_def l =
  match dyp_merge_Obj_class_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_dstr_contents l =
  match dyp_merge_Obj_dstr_contents l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_expr l =
  match dyp_merge_Obj_expr l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_function_def l =
  match dyp_merge_Obj_function_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_if_def l =
  match dyp_merge_Obj_if_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_let_def l =
  match dyp_merge_Obj_let_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_macro_def l =
  match dyp_merge_Obj_macro_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_main l =
  match dyp_merge_Obj_main l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_match_def l =
  match dyp_merge_Obj_match_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_method_call_def l =
  match dyp_merge_Obj_method_call_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_record_def l =
  match dyp_merge_Obj_record_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_require_def l =
  match dyp_merge_Obj_require_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_sstr_contents l =
  match dyp_merge_Obj_sstr_contents l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_statement_def l =
  match dyp_merge_Obj_statement_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_str l =
  match dyp_merge_Obj_str l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_tuple_def l =
  match dyp_merge_Obj_tuple_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_var_def l =
  match dyp_merge_Obj_var_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res
let dyp_merge_Obj_while_def l =
  match dyp_merge_Obj_while_def l with
    | ([],_,_) -> dyp_merge l
    | res -> res

let __dypgen_merge_list = [(fun l -> (
  let f1 (o,gd,ld) = match o with Lexeme_matched ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Lexeme_matched"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Lexeme_matched l in
  let f2 o = Lexeme_matched o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_DSTRCH ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_DSTRCH"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_DSTRCH l in
  let f2 o = Obj_DSTRCH o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_FLOAT ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_FLOAT"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_FLOAT l in
  let f2 o = Obj_FLOAT o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_INT ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_INT"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_INT l in
  let f2 o = Obj_INT o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_SSTRCH ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_SSTRCH"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_SSTRCH l in
  let f2 o = Obj_SSTRCH o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_anon_func_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_anon_func_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_anon_func_def l in
  let f2 o = Obj_anon_func_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_array_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_array_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_array_def l in
  let f2 o = Obj_array_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_class_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_class_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_class_def l in
  let f2 o = Obj_class_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_dstr_contents ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_dstr_contents"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_dstr_contents l in
  let f2 o = Obj_dstr_contents o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_expr ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_expr"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_expr l in
  let f2 o = Obj_expr o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_function_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_function_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_function_def l in
  let f2 o = Obj_function_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_if_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_if_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_if_def l in
  let f2 o = Obj_if_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_let_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_let_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_let_def l in
  let f2 o = Obj_let_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_macro_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_macro_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_macro_def l in
  let f2 o = Obj_macro_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_main ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_main"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_main l in
  let f2 o = Obj_main o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_match_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_match_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_match_def l in
  let f2 o = Obj_match_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_method_call_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_method_call_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_method_call_def l in
  let f2 o = Obj_method_call_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_record_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_record_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_record_def l in
  let f2 o = Obj_record_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_require_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_require_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_require_def l in
  let f2 o = Obj_require_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_sstr_contents ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_sstr_contents"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_sstr_contents l in
  let f2 o = Obj_sstr_contents o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_statement_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_statement_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_statement_def l in
  let f2 o = Obj_statement_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_str ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_str"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_str l in
  let f2 o = Obj_str o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_tuple_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_tuple_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_tuple_def l in
  let f2 o = Obj_tuple_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_var_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_var_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_var_def l in
  let f2 o = Obj_var_def o in
  (List.map f2 ol, gd, ld)));
(fun l -> (
  let f1 (o,gd,ld) = match o with Obj_while_def ob -> (ob,gd,ld)
    | _ -> failwith "type error, bad obj in dyp_merge_Obj_while_def"
  in
  let l = List.map f1 l in
  let (ol,gd,ld) = dyp_merge_Obj_while_def l in
  let f2 o = Obj_while_def o in
  (List.map f2 ol, gd, ld)))]



let __dypgen_test_cons () =  [|
  (fun x -> match x with Lexeme_matched _ -> true | _ -> false);
  (fun x -> match x with Obj_DSTRCH _ -> true | _ -> false);
  (fun x -> match x with Obj_FLOAT _ -> true | _ -> false);
  (fun x -> match x with Obj_INT _ -> true | _ -> false);
  (fun x -> match x with Obj_SSTRCH _ -> true | _ -> false);
  (fun x -> match x with Obj_anon_func_def _ -> true | _ -> false);
  (fun x -> match x with Obj_array_def _ -> true | _ -> false);
  (fun x -> match x with Obj_class_def _ -> true | _ -> false);
  (fun x -> match x with Obj_dstr_contents _ -> true | _ -> false);
  (fun x -> match x with Obj_expr _ -> true | _ -> false);
  (fun x -> match x with Obj_function_def _ -> true | _ -> false);
  (fun x -> match x with Obj_if_def _ -> true | _ -> false);
  (fun x -> match x with Obj_let_def _ -> true | _ -> false);
  (fun x -> match x with Obj_macro_def _ -> true | _ -> false);
  (fun x -> match x with Obj_main _ -> true | _ -> false);
  (fun x -> match x with Obj_match_def _ -> true | _ -> false);
  (fun x -> match x with Obj_method_call_def _ -> true | _ -> false);
  (fun x -> match x with Obj_record_def _ -> true | _ -> false);
  (fun x -> match x with Obj_require_def _ -> true | _ -> false);
  (fun x -> match x with Obj_sstr_contents _ -> true | _ -> false);
  (fun x -> match x with Obj_statement_def _ -> true | _ -> false);
  (fun x -> match x with Obj_str _ -> true | _ -> false);
  (fun x -> match x with Obj_tuple_def _ -> true | _ -> false);
  (fun x -> match x with Obj_var_def _ -> true | _ -> false);
  (fun x -> match x with Obj_while_def _ -> true | _ -> false)|]

let __dypgen_dummy_marker_2 = ()
let pp () = Dyp.make_parser
  __dypgen_ra_list Dyp_priority_data.relations global_data local_data
  (Dyp.Tools.make_nt_cons_map Dyp_symbols_array.nt_cons_list)
  Dyp_symbols_array.entry_points
  
  false 19 true
  
  Dyp_aux_functions.get_token_value
  Dyp_symbols.get_token_name Dyp_symbols.str_token
  global_data_equal local_data_equal (__dypgen_test_cons ())
  Dyp_symbols_array.str_cons
  Dyp_symbols_array.cons_array Dyp_aux_functions.cons_table
  (Dyp.Tools.array_of_list __dypgen_merge_list)
  dypgen_lexbuf_position __dypgen_regexp_decl __dypgen_main_lexer
  __dypgen_aux_lexer Dyp_symbols.ter_string_list
  (fun lexbuf -> Lexeme_matched (Dyp.lexeme lexbuf))
  true


let __dypgen_dummy_marker_5 = ()

let __dypgen_dummy_marker_3 = ()

let main ?(global_data=global_data) ?(local_data=local_data) lexbuf =
  let pf = Dyp.lexparse (pp ()) "main" ~global_data:global_data
    ~local_data:local_data ~match_len:dypgen_match_length
    ~keep_data:dypgen_keep_data
    ~use_rule_order:dypgen_use_rule_order
    ~use_all_actions:dypgen_use_all_actions
    ~choose_token:dypgen_choose_token lexbuf in
  let aux1 (o,p) = match o with
    | Obj_main r -> (r,p)
    | _ -> failwith "Wrong type for entry result" in
  List.map aux1 pf


let __dypgen_dummy_marker_4 = ()

