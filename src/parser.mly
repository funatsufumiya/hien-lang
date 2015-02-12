%%

main
  : expr { $1 }
  ;

expr
  : require_def { $1 }
  | var_def { $1 }
  | let_def { $1 }
  | function_def { $1 }
  | anon_func_def { $1 }
  | class_def { $1 }
  | while_def { $1 }
  | if_def { $1 }
  | match_def { $1 }
  | method_call_def { $1 }