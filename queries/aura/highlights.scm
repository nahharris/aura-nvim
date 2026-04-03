; Keywords
[
  "let"
  "const"
  "defn"
  "defmacro"
  "def"
  "pub"
  "use"
  "inline"
  "builtin"
  "return"
  "break"
  "continue"
  "loop"
  "doc"
  "if"
  "when"
  "cases"
] @keyword

; Boolean literals
[
  "true"
  "false"
] @boolean

; Type keywords
[
  "union"
  "enum"
  "interface"
  "Func"
] @keyword.type

; Comments
(comment) @comment

; String literals
(string) @string
(string_content) @string
(escape_sequence) @string.escape
(interpolation) @embedded

; Numbers
(integer) @number
(float) @number.float

; Identifiers
(identifier) @variable

; Type identifiers
(type_identifier) @type

; Function calls
(call_expression
  (identifier) @function.call)

; Function definitions
(fn_decl
  (identifier) @function)

; Macro definitions
(macro_decl
  (identifier) @function.macro)

; Type definitions
(def_decl
  (identifier) @type)

; Parameters
(parameter
  (identifier) @variable.parameter)

; Operators
[
  "="
  "+"
  "-"
  "*"
  "/"
  "%"
  "=="
  "!="
  "<"
  ">"
  "<="
  ">="
  "&&"
  "||"
  "!"
  ".."
  "?."
  "?:"
  "!!"
  ":"
  "|>"
  "->"
] @operator

; Punctuation
[
  "(" ")"
  "[" "]"
  "{" "}"
  ","
  ";"
] @punctuation.delimiter

; Atoms
(atom) @label

; Dot identifiers
(dot_identifier) @constructor

; Named arguments
(named_argument
  (identifier) @property)

; Field access
(field_access
  (identifier) @property)
