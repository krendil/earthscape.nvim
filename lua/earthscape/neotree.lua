local colors = require("earthscape.colors").palette

local M = {}

function M.apply()
  local p = colors

  -- Main neotree window
  vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { fg = p.fg2, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = p.bg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = p.bg2, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeVertSplit", { fg = p.bg2, bg = p.bg1 })

  -- Title and tabs
  vim.api.nvim_set_hl(0, "NeoTreeTabInactive", { fg = p.fg3, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "NeoTreeTabActive", { fg = p.mushroom, bg = p.bg3, bold = true })
  vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorInactive", { fg = p.bg2, bg = p.bg2 })
  vim.api.nvim_set_hl(0, "NeoTreeTabSeparatorActive", { fg = p.bg2, bg = p.bg3 })

  -- Directory and file icons
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = p.fg2 })
  vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = p.mushroom, bold = true })

  -- File types and extensions
  vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = p.leaf, italic = true })
  vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = p.bg2 })
  vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = p.fg3 })

  -- Cursor and selection
  vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = p.bg2 })
  vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = p.fg3 })

  -- Git status indicators
  vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = p.leaf })
  vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = p.sun, bold = true })
  vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = p.fruit })
  vim.api.nvim_set_hl(0, "NeoTreeGitIgnocolor1", { fg = p.uic12 })
  vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = p.water })
  vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = p.algae })
  vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = p.fg1 })

  -- Symlinks
  vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = p.water, italic = true })

  -- Floating window (for popups)
  vim.api.nvim_set_hl(0, "NeoTreeFloatBorder", { fg = p.bg2, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreeFloatTitle", { fg = p.leaf, bg = p.bg1, bold = true })

  -- Preview window
  vim.api.nvim_set_hl(0, "NeoTreePreviewBorder", { fg = p.bg2, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "NeoTreePreviewTitle", { fg = p.leaf, bg = p.bg1, bold = true })

  -- Buffers tab
  vim.api.nvim_set_hl(0, "NeoTreeBufferNumber", { fg = p.fg3 })

  -- Statistics and info
  vim.api.nvim_set_hl(0, "NeoTreeStats", { fg = p.fg3, italic = true })
  vim.api.nvim_set_hl(0, "NeoTreeStatsHeader", { fg = p.leaf, bold = true })

  -- Modified indicator
  vim.api.nvim_set_hl(0, "NeoTreeModified", { fg = p.mushroom })

  -- Hidden files
  vim.api.nvim_set_hl(0, "NeoTreeHiddenByName", { fg = p.uic12, italic = true })

  -- Filter text
  vim.api.nvim_set_hl(0, "NeoTreeFilterTerm", { fg = p.mushroom, bold = true })

  -- Titlebar
  vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = p.fg1, bg = p.bg3, bold = true })
end

return M
