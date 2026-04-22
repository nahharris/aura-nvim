# aura-nvim

Aura and AUON language support for Neovim.

## Features

- Filetype detection for `*.aura` and `*.auon`
- Tree-sitter highlight queries
- Basic folds and indentation queries
- Basic textobjects (`function`, `class`, `parameter`) for Aura

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

vim.treesitter.language.register("aura", "auon")
```

Then install/update parser:

```vim
:TSInstall aura
```

## Verify

- `:set filetype?` should show `filetype=aura` or `filetype=auon`
- `:TSInstallInfo` should include `aura`
- `:InspectTree` should show Aura syntax nodes

## Development

This plugin consumes parser output from:

- `https://github.com/nahharris/tree-sitter-aura`

## LSP (future-ready)

When Aura LSP is available on your `PATH` (for example as `aura-lsp`),
you can wire it with `nvim-lspconfig`:

```lua
require("lspconfig").aura = {
  default_config = {
    cmd = { "aura-lsp" },
    filetypes = { "aura" },
    root_dir = require("lspconfig.util").root_pattern("project.auon", ".git"),
    single_file_support = true,
  },
}

require("lspconfig").aura.setup({})
```

If you prefer direct startup without a custom lspconfig registration:

```lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "aura",
  callback = function(args)
    vim.lsp.start({
      name = "aura-lsp",
      cmd = { "aura-lsp" },
      root_dir = vim.fs.root(args.buf, { "project.auon", ".git" }),
    })
  end,
})
```

## License

MIT
