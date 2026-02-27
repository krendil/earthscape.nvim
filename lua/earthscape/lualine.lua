local colors = require("earthscape.colors").palette

local earthscape = {}

earthscape.normal = {
  a = { fg = colors.fg1, bg = colors.bg2, gui = "bold" },
  b = { fg = colors.fg1, bg = colors.bg3},
  c = { fg = colors.comment, bg = colors.bg0},
}

earthscape.insert = {
  a = { fg = colors.bg1, bg = colors.leaf, gui = "bold" },
}

earthscape.visual = {
  a = { fg = colors.bg1, bg = colors.sand, gui = "bold" },
}

earthscape.replace = {
  a = { fg = colors.bg1, bg = colors.blossom, gui = "bold" },
}

earthscape.command = {
  a = { fg = colors.bg1, bg = colors.mushroom, gui = "bold" },
}

earthscape.inactive = {
  a = { fg = colors.comment, bg = colors.bg0 },
  b = { fg = colors.comment, bg = colors.bg0 },
  c = { fg = colors.comment, bg = colors.bg0 },
}

return earthscape 
