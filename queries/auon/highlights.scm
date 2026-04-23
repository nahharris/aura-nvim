(comment) @comment
(string) @string
(string_content) @string
(escape_sequence) @string.escape
(char) @string.special
(integer) @number
(float) @number.float
(alias_value) @constant.builtin

(dot_identifier
  name: (identifier) @constructor)

(auon_dot_identifier
  name: (identifier) @constructor)

(struct_field
  name: (identifier) @property)

[
  "="
  "."
  ","
] @operator
