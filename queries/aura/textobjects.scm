(function_declaration) @function.outer

(function_declaration
  body: (block_expression) @function.inner)

(macro_declaration) @class.outer

(macro_declaration
  body: (block_expression) @class.inner)

(parameter) @parameter.outer
