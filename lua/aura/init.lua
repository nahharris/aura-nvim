local M = {}

function M.setup()
  local ok, parsers = pcall(require, "nvim-treesitter.parsers")
  if ok then
    local parser_config = parsers.get_parser_configs()
    parser_config.aura = parser_config.aura or {
      install_info = {
        url = "https://github.com/nahharris/tree-sitter-aura",
        files = { "src/parser.c" },
        branch = "main",
      },
      filetype = "aura",
    }
  end

  if vim.treesitter and vim.treesitter.language and vim.treesitter.language.register then
    vim.treesitter.language.register("aura", "auon")
  end

  return true
end

return M
