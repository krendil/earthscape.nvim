local M = {}

M.palette = {
  ---------------------------------------------------------------------------
  -- CORE BACKGROUND SHADES (dark → light)
  -- bg0: Extreme darkest background. Use sparingly (e.g. backdrop, contrast)
  bg0 = "#161314",
  -- bg1: Primary editor background (Normal). Change this first when theming.
  bg1 = "#1d191a",
  -- bg2: Secondary surface (CursorLine, popup menus, subtle panels, selection bg)
  bg2 = "#473c3c",
  -- bg3: Elevated / emphasized surface (statusline, tabline selected, titles)
  bg3 = "#0a4900",

  ---------------------------------------------------------------------------
  -- CORE FOREGROUNDS (bright → dim)
  -- fg0: Maximum contrast foreground (headings, strong emphasis)
  fg0 = "#e9ccc3",
  -- fg1: Primary text (Normal fg). Your main readable color.
  fg1 = "#e9ccc3",
  -- fg2: Secondary text (less important content, doc strings, mild dim)
  fg2 = "#90807f",
  -- fg3: Tertiary / subtle text (line numbers, inactive, meta info)
  fg3 = "#90807f",

  ---------------------------------------------------------------------------
  -- SELECTION & MISC
  -- selbg: Visual selection background, also used for inverse accents
  selbg = "#0a4900",
  -- selfg: Foreground inside selected regions (ensure contrast vs selbg)
  selfg = "#e9ccc3",
  -- comment: Comment text + doc annotations (generally muted)
  comment = "#90807f",
  searchbg = "#7b493c", -- Strong Mushroom

  ---------------------------------------------------------------------------
  -- ACCENT / SEMANTIC COLOR SLOTS
  -- Error, removed
  fruit = "#ff4143",
  -- constants, keywords, operators
  mushroom = "#cc896e",
  -- types, html tags
  sand = "#d4ac6f",
  -- Conflicts, warnings, todos
  sun = "#ecbc39",
  -- functions, headings
  leaf = "#78a451",
  -- keys, json and css properties
  algae = "#8eab99",
  -- strings and links
  water = "#7a8e99",
  -- escape sequences, special characters, preprocessor and macros
  blossom = "#bf8bb0",
  

  ---------------------------------------------------------------------------
  -- UI DECORATIVE & LOW EMPHASIS ELEMENTS
  -- uic1: Borders, separators, guides, non-content structural UI
  uic1 = "#473c3c",
}

function M.apply()
  local p = M.palette
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.g.colors_name = "earthscape"

  -- Basic highlight groups

  vim.api.nvim_set_hl(0, "Normal", { fg = p.fg1, bg = p.bg1 })
  vim.api.nvim_set_hl(0, "CursorLine", { bg = p.bg2 })
  vim.api.nvim_set_hl(0, "Cursor", { fg = p.bg1, bg = p.color2 })
  vim.api.nvim_set_hl(0, "CursorColumn", { bg = p.bg2 })
  vim.api.nvim_set_hl(0, "Comment", { fg = p.comment, italic = true })
  -- Syntax groups using all 6 colors logically:
  vim.api.nvim_set_hl(0, "Statement", { fg = p.mushroom })       -- Statements, error, danger
  vim.api.nvim_set_hl(0, "Keyword", { fg = p.mushroom })           -- Keywords, control flow
  vim.api.nvim_set_hl(0, "Operator", { fg = p.mushroom })          -- Operators
  vim.api.nvim_set_hl(0, "Constant", { fg = p.mushroom })          -- Constants, numbers, enums
  vim.api.nvim_set_hl(0, "Number", { fg = p.fg1 })            -- Numbers
  vim.api.nvim_set_hl(0, "Boolean", { fg = p.mushroom })           -- Booleans
  vim.api.nvim_set_hl(0, "Type", { fg = p.sand })              -- Types, classes
  vim.api.nvim_set_hl(0, "Structure", { fg = p.sand })         -- Structs, interfaces
  vim.api.nvim_set_hl(0, "Class", { fg = p.sand })             -- Classes
  vim.api.nvim_set_hl(0, "String", { fg = p.water })            -- Strings, regex, docstrings
  vim.api.nvim_set_hl(0, "Special", { fg = p.blossom })           -- Special strings, regex
  vim.api.nvim_set_hl(0, "Function", { fg = p.leaf })          -- Functions, methods
  vim.api.nvim_set_hl(0, "Identifier", { fg = p.fg1 })        -- Identifiers, builtins
  vim.api.nvim_set_hl(0, "PreProc", { fg = p.blossom })           -- Preprocessor, macros
  vim.api.nvim_set_hl(0, "Underlined", { underline = true })
  vim.api.nvim_set_hl(0, "Todo", { fg = p.sand, bg = p.bg1, bold = true })

  -- Essential UI elements for better readability
  vim.api.nvim_set_hl(0, "LineNr", { fg = p.fg3 }) -- Line numbers in subtle gray
  vim.api.nvim_set_hl(0, "CursorLineNr", { fg = p.mushroom }) -- Current line number highlighted
  vim.api.nvim_set_hl(0, "Visual", { bg = p.selbg, fg = p.selfg }) -- Selection highlighting
  vim.api.nvim_set_hl(0, "Search", { bg = p.searchbg }) -- Search highlighting
  vim.api.nvim_set_hl(0, "IncSearch", { fg = p.bg1, bg = p.leaf }) -- Incremental search
  vim.api.nvim_set_hl(0, "StatusLine", { fg = p.fg1, bg = p.bg3 }) -- Status line
  vim.api.nvim_set_hl(0, "StatusLineNC", { fg = p.fg3, bg = p.bg2 }) -- Inactive status line
  vim.api.nvim_set_hl(0, "VertSplit", { fg = p.bg2 }) -- Window splits
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = p.bg2 }) -- Modern window separators
  vim.api.nvim_set_hl(0, "TabLine", { fg = p.fg3, bg = p.bg1 }) -- Tab line
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = p.bg1 }) -- Tab line fill
  vim.api.nvim_set_hl(0, "TabLineSel", { fg = p.fg1, bg = p.bg3, bold = true }) -- Selected tab
  
  -- Popup menus for better completion readability
  vim.api.nvim_set_hl(0, "Pmenu", { fg = p.fg2, bg = p.bg3 }) -- Popup menu
  vim.api.nvim_set_hl(0, "PmenuSel", { fg = p.fg1, bg = p.bg2 }) -- Selected popup item
  vim.api.nvim_set_hl(0, "PmenuSbar", { bg = p.bg2 }) -- Popup scrollbar
  vim.api.nvim_set_hl(0, "PmenuThumb", { bg = p.fg3 }) -- Popup scrollbar thumb
  
  -- Error and warning highlights
  vim.api.nvim_set_hl(0, "Error", { fg = p.fruit, bold = true }) -- Error text
  vim.api.nvim_set_hl(0, "ErrorMsg", { fg = p.fruit, bold = true }) -- Error messages
  vim.api.nvim_set_hl(0, "WarningMsg", { fg = p.mushroom, bold = true }) -- Warning messages
  vim.api.nvim_set_hl(0, "ModeMsg", { fg = p.fg2 }) -- Mode messages

  -- Apply Treesitter theming
  require("earthscape.treesitter").apply()

  -- Apply neotree theming
  require("earthscape.neotree").apply()
end

return M 
