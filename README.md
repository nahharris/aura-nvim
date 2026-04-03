# aura-nvim

Aura language support for Neovim.

## Features

- Filetype detection for `*.aura`
- Tree-sitter highlight queries
- Basic folds and indentation queries

## Install (lazy.nvim)

```lua
{
  "nahharris/aura-nvim",
  ft = { "aura" },
}
```

## Tree-sitter parser setup

Add this once in your Neovim config:

```lua
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

parser_config.aura = {
  install_info = {
    url = "https://github.com/nahharris/tree-sitter-aura",
    files = { "src/parser.c" },
    branch = "main",
  },
  filetype = "aura",
}
```

Then install/update parser:

```vim
:TSInstall aura
```

## Verify

- `:set filetype?` should show `filetype=aura`
- `:TSInstallInfo` should include `aura`
- `:InspectTree` should show Aura syntax nodes

## Development

This plugin consumes parser output from:

- `https://github.com/nahharris/tree-sitter-aura`

## License

MIT
