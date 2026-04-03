; Function objects
(fn_decl) @function.outer

(fn_decl
  (block) @function.inner)

; Macro objects
(macro_decl) @class.outer

(macro_decl
  (block) @class.inner)

; Parameter objects
(parameter) @parameter.outer
