local colors = require("earthscape.colors").palette

local M = {}

function M.apply()
  local p = colors


  -- Treesitter highlight groups using all 6 syntax colors
  vim.api.nvim_set_hl(0, "@comment", { fg = p.comment, italic = true })
  vim.api.nvim_set_hl(0, "@comment.error", { fg = p.fruit, italic = true })
  vim.api.nvim_set_hl(0, "@comment.warning", { fg = p.mushroom, italic = true })
  vim.api.nvim_set_hl(0, "@comment.todo", { fg = p.sun, bold = true })
  vim.api.nvim_set_hl(0, "@comment.hack", { fg = p.fruit, bold = true })
  vim.api.nvim_set_hl(0, "@comment.xxx", { fg = p.blossom, bold = true })

  -- Core syntax roles
  vim.api.nvim_set_hl(0, "@constant", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@constant.builtin", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@constant.macro", { fg = p.blossom })
  vim.api.nvim_set_hl(0, "@number", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@boolean", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@string", { fg = p.water })
  vim.api.nvim_set_hl(0, "@string.documentation", { fg = p.water })
  vim.api.nvim_set_hl(0, "@string.regex", { fg = p.water })
  vim.api.nvim_set_hl(0, "@string.escape", { fg = p.blossom })
  vim.api.nvim_set_hl(0, "@string.special", { fg = p.blossom })
  vim.api.nvim_set_hl(0, "@character", { fg = p.algae })
  vim.api.nvim_set_hl(0, "@character.special", { fg = p.blossom })

  vim.api.nvim_set_hl(0, "@type", { fg = p.sand })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = p.sand })
  vim.api.nvim_set_hl(0, "@type.definition", { fg = p.sand })
  vim.api.nvim_set_hl(0, "@type.qualifier", { fg = p.sand })

  vim.api.nvim_set_hl(0, "@function", { fg = p.leaf })
  vim.api.nvim_set_hl(0, "@function.builtin", { fg = p.leaf })
  vim.api.nvim_set_hl(0, "@function.call", { fg = p.leaf })
  vim.api.nvim_set_hl(0, "@function.macro", { fg = p.blossom })
  vim.api.nvim_set_hl(0, "@method", { fg = p.leaf })
  vim.api.nvim_set_hl(0, "@method.call", { fg = p.leaf })
  vim.api.nvim_set_hl(0, "@constructor", { fg = p.leaf })

  vim.api.nvim_set_hl(0, "@variable", {})
  vim.api.nvim_set_hl(0, "@variable.builtin", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@variable.parameter", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@variable.member", { fg = p.fg1 })

  vim.api.nvim_set_hl(0, "@property", { fg = p.algae })
  vim.api.nvim_set_hl(0, "@field", { fg = p.fg1 })

  vim.api.nvim_set_hl(0, "@keyword", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@keyword.function", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@keyword.operator", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@keyword.return", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@keyword.import", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@keyword.exception", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@keyword.directive", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@keyword.directive.define", { fg = p.mushroom })

  vim.api.nvim_set_hl(0, "@operator", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@punctuation", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.bracket", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@punctuation.special", { fg = p.blossom })

  -- Markup (for markdown, etc.)
  vim.api.nvim_set_hl(0, "@markup.strong", { fg = p.fg1, bold = true })
  vim.api.nvim_set_hl(0, "@markup.italic", { fg = p.fg1, italic = true })
  vim.api.nvim_set_hl(0, "@markup.strikethrough", { fg = p.uic1, strikethrough = true })
  vim.api.nvim_set_hl(0, "@markup.underline", { fg = p.fg1, underline = true })
  vim.api.nvim_set_hl(0, "@markup.heading", { fg = p.leaf, bold = true })
  vim.api.nvim_set_hl(0, "@markup.quote", { fg = p.algae, italic = true })
  vim.api.nvim_set_hl(0, "@markup.math", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@markup.link", { fg = p.water, underline = true })
  vim.api.nvim_set_hl(0, "@markup.link.label", { fg = p.algae })
  vim.api.nvim_set_hl(0, "@markup.link.url", { fg = p.water, underline = true })
  vim.api.nvim_set_hl(0, "@markup.raw", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@markup.raw.block", { fg = p.mushroom })
  vim.api.nvim_set_hl(0, "@markup.list", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@markup.list.checked", { fg = p.fg1 })
  vim.api.nvim_set_hl(0, "@markup.list.unchecked", { fg = p.fg1 })

  -- Tags (HTML/XML: <div>, <Header>, <p>, <MyComponent>)
  vim.api.nvim_set_hl(0, "@tag", { fg = p.sand }) -- div, header, main, MyComponent
  vim.api.nvim_set_hl(0, "@tag.attribute", { fg = p.algae }) -- className, id, href, onClick
  vim.api.nvim_set_hl(0, "@tag.delimiter", { fg = p.uic1 }) -- < > </ />

  -- Attributes (@decorators, [attributes], #[derive])
  vim.api.nvim_set_hl(0, "@attribute", { fg = p.mushroom }) -- @Component, @override, [Serializable]

  -- Labels (goto labels, break/continue labels)
  vim.api.nvim_set_hl(0, "@label", { fg = p.mushroom }) -- label:, break label

  -- Namespace (std::, React., namespace MyNamespace)
  vim.api.nvim_set_hl(0, "@namespace", { fg = p.fg1 }) -- std, React, System
  vim.api.nvim_set_hl(0, "@module", { fg = p.fg1 }) -- import * from 'module'
  vim.api.nvim_set_hl(0, "@module.latex", { fg = p.leaf }) -- Latex decides that some commands like \begin and \subsection are 'modules'

  -- Preproc
  vim.api.nvim_set_hl(0, "@preproc", { fg = p.blossom })

  -- Include
  vim.api.nvim_set_hl(0, "@include", { fg = p.blossom })

  -- Define
  vim.api.nvim_set_hl(0, "@define", { fg = p.blossom })

  -- Conditional
  vim.api.nvim_set_hl(0, "@conditional", { fg = p.mushroom })

  -- Repeat
  vim.api.nvim_set_hl(0, "@repeat", { fg = p.mushroom })

  -- Exception
  vim.api.nvim_set_hl(0, "@exception", { fg = p.mushroom })

  -- Special characters
  vim.api.nvim_set_hl(0, "@character.printf", { fg = p.blossom })

  -- Diff (git diff colors: +added, -removed, ~modified)
  vim.api.nvim_set_hl(0, "@diff.plus", { fg = p.leaf }) -- + added lines
  vim.api.nvim_set_hl(0, "@diff.minus", { fg = p.fruit }) -- - removed lines
  vim.api.nvim_set_hl(0, "@diff.delta", { fg = p.mushroom }) -- ~ modified lines

  -- Language-specific

end

return M
