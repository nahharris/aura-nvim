; Function objects
(fn_decl) @function.outer

(fn_decl
  body: (block) @function.inner)

; Macro objects
(macro_decl) @class.outer

(macro_decl
  body: (block) @class.inner)

; Parameter objects
(parameter) @parameter.outer
