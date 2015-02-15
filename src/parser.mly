%token <int> INT
%token <float> FLOAT
%token <string> DBL_STR
%token <string> SGL_STR
%token <string> IDENT_CHARS
%token <string> DBL_STR_LITERAL
%token <string> SGL_STR_LITERAL
%token TRUE FALSE
%token L_PAREN R_PAREN
%token LA_PAREN RA_PAREN
%token LB_PAREN RB_PAREN
%token COLON
%token SEMICOLON
%token DOT
%token COMMA
%token EQUAL
%token DBL_EQUAL
%token REQUIRE
%token LET VAR DEF
%token LT GT
%token PLUS MINUS TIMES DIV
%token RETURN
%token EOF

%left PLUS MINUS
%left TIMES DIV
%nonassoc UMINUS 

%start main
%type <Ast.ast> main

%%

main
  : toplevel_scope EOF { $1 }
  | EOF { Ast.NO_CODE }
  ;

toplevel_scope
  : top_expr_list { Ast.EXPR_LIST($1) }
  ;

top_expr_list
  : top_expr_list top_expr { List.append $1 [$2] }
  | top_expr { [$1] }
  ;

top_expr
  : require_def { $1 }
  | let_def { $1 }
  | var_def { $1 }
  | function_def { $1 }
  ;

expr
  : int_def { $1 }
  | float_def { $1 }
  | bool_def { $1 }
  | string_def { $1 }
  | paren_def { $1 }
  | anon_func_def { $1 }
  | value_def { $1 }
  | func_call_def { $1 }
  | binary_op_def { $1 }
  ;

func_expr
  : let_def { $1 }
  | var_def { $1 }
  | return_def { $1 }
  | expr { $1 }
  ;

require_def
  : REQUIRE str { Ast.REQUIRE($2) }
  ;

let_def
  : LET let_assign_list { Ast.LET_DECLARE($2) }
  ;

var_def
  : VAR var_assign_list { Ast.VAR_DECLARE($2) }
  ;

int_def
  : INT { Ast.INT($1) }
  ;

float_def
  : FLOAT { Ast.FLOAT($1) }
  ;

bool_def
  : TRUE { Ast.TRUE }
  | FALSE { Ast.FALSE }
  ;

string_def
  : str { Ast.STRING($1) }
  ;

function_def
  : DEF ident L_PAREN args_with_type R_PAREN LB_PAREN func_expr_list RB_PAREN { Ast.FUNCTION_DEF($2, $4, $7) }
  ;

return_def
  : RETURN expr { Ast.RETURN($2) }
  ;

paren_def
  : L_PAREN expr_semicolon_list R_PAREN { Ast.PAREN($2) }
  ;

func_call_def
  : method_chain L_PAREN args R_PAREN { Ast.FUNC_CALL($1,$3) }
  | ident L_PAREN args R_PAREN { Ast.FUNC_CALL(Ast.VARIABLE($1),$3) }
  | anon_func_def L_PAREN args R_PAREN { Ast.FUNC_CALL($1,$3) }
  ;

value_def
  : method_chain { $1 }
  | L_PAREN method_chain R_PAREN { $2 }
  ;

binary_op_def
  : expr PLUS expr { Ast.BIN_OP("PLUS",$1,$3) }
  | expr MINUS expr { Ast.BIN_OP("MINUS",$1,$3) }
  | expr TIMES expr { Ast.BIN_OP("TIMES",$1,$3) }
  | expr DIV expr { Ast.BIN_OP("DIV",$1,$3) }
  ;

anon_func_def
  : L_PAREN L_PAREN args_with_type R_PAREN EQUAL GT func_expr_list R_PAREN { Ast.ANON_FUNC($3, $7) }
  | L_PAREN args_with_type EQUAL GT func_expr_list R_PAREN { Ast.ANON_FUNC($2, $5) }
  ;

method_chain
  : method_chain DOT variant_value { Ast.METHOD_VALUE($1,$3) }
  | variant_value { $1 }
  ;

variant_value
  : variant_value_unit { $1 }
  ;

variant_value_unit
  : func_call_def { $1 }
  | ident { Ast.VARIABLE($1) }
  ;

expr_semicolon_list
  : expr_semicolon_list SEMICOLON expr { List.append $1 [$3] }
  | expr { [$1] }
  ;

func_expr_list
  : func_expr_list func_expr { List.append $1 [$2] }
  | func_expr { [$1] }
  ;

args
  : args COMMA expr { List.append $1 [$3] }
  | expr { [$1] }
  | { [] }
  ;

args_with_type
  : args_with_type ident_with_type { List.append $1 [$2] }
  | ident_with_type { [$1] }
  | { [] }
  ;

ident_with_type
  : ident COLON ident { ($1,$3) }
  | ident { ($1,"") }
  ;

let_assign_list
  : let_assign_list COMMA let_assign { List.append $1 [$3] }
  | let_assign { [$1] }
  ;

var_assign_list
  : var_assign_list COMMA var_assign { List.append $1 [$3] }
  | var_assign { [$1] }
  ;

let_assign
  : ident EQUAL expr { ($1,$3) }
  ;

var_assign
  : ident EQUAL expr { ($1,$3) }
  ;

str
  : DBL_STR_LITERAL { $1 }
  | SGL_STR_LITERAL { $1 }
  ;

ident
  : IDENT_CHARS { $1 }
  ;

