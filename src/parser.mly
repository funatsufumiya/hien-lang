%token <int> INT
%token <float> FLOAT
%token <string> DBL_STR
%token <string> SGL_STR
%token <string> IDENT_CHARS
%token <string> DBL_STR_LITERAL
%token <string> SGL_STR_LITERAL
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
%token RETURN
%token EOF

%start main
%type <Ast.ast> main

%%

main
  : expr EOF { $1 }
  ;

expr
  : require_def { $1 }
  | let_def { $1 }
  | var_def { $1 }
  | int_def { $1 }
  | float_def { $1 }
  | string_def { $1 }
  | function_def { $1 }
  | return_def { $1 }
  | paren_def { $1 }
  ;

require_def
  : REQUIRE str { Ast.REQUIRE($2) }
  ;

let_def
  : LET let_assign_list { Ast.LET($2) }
  ;

var_def
  : VAR var_assign_list { Ast.VAR($2) }
  ;

int_def
  : INT { Ast.INT($1) }
  ;

float_def
  : FLOAT { Ast.FLOAT($1) }
  ;

string_def
  : str { Ast.STRING($1) }
  ;

function_def
  : DEF ident L_PAREN args R_PAREN LB_PAREN expr_list RB_PAREN { Ast.FUNCTION($2, $4, $7) }
  ;

return_def
  : RETURN expr { Ast.RETURN($2) }
  ;

paren_def
  : L_PAREN expr_semicolon_list R_PAREN { Ast.PAREN($2) }
  ;

expr_semicolon_list
  : expr_semicolon_list SEMICOLON expr { List.append $1 [$3] }
  | expr { [$1] }
  ;

expr_list
  : expr_list expr { List.append $1 [$2] }
  | expr { [$1] }
  ;

args
  : args ident_with_type { List.append $1 [$2] }
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

