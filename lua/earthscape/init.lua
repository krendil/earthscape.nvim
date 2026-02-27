local M = {}

function M.colorscheme()
  -- Load the main colors
  require("earthscape.colors").apply()
end

function M.lualine()
  return require("earthscape.lualine")
end

function M.snacks()
  require("earthscape.snacks").apply()
end

function M.treesitter()
  require("nvim-treesitter.configs").setup({
    highlight = { enable = true },
  })
end

return M
