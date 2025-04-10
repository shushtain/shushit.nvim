local M = {}

function M.setup(palette)
  local groups = {
    --[[
      IDENTIFIERS
    --]]

    ["@variable"] = {
      fg = palette.syntax.variable.any,
    },
    ["@namespace"] = {
      link = "@variable",
    },
    ["@variable.builtin"] = {
      fg = palette.syntax.variable.builtin.any,
      bold = true
    },
    ["@namespace.builtin"] = {
      link = "@variable.builtin",
    },

    ["@variable.parameter"] = {
      fg = palette.syntax.variable.parameter.any,
    },
    ["@variable.parameter.builtin"] = {
      fg = palette.syntax.variable.parameter.builtin.any,
      bold = true
    },

    ["@variable.member"] = {
      fg = palette.syntax.variable.member.any,
    },

    ["@constant"] = {
      fg = palette.syntax.constant.any,
    },
    ["@constant.builtin"] = {
      fg = palette.syntax.constant.builtin.any,
      bold = true
    },
    ["@constant.macro"] = {
      fg = palette.syntax.constant.macro.any,
    },

    ["@module"] = {
      fg = palette.syntax.module.any,
    },
    ["@module.builtin"] = {
      fg = palette.syntax.module.builtin.any,
      bold = true
    },

    ["@label"] = {
      fg = palette.syntax.label.any,
    },

    --[[
      LITERALS
    --]]

    ["@string"] = {
      fg = palette.syntax.string.any,
    },
    ["@string.documentation"] = {
      fg = palette.syntax.string.documentation.any,
    },
    ["@string.regexp"] = {
      fg = palette.syntax.string.regexp.any,
    },
    ["@string.escape"] = {
      fg = palette.syntax.string.escape.any,
    },

    ["@string.special"] = {
      fg = palette.syntax.string.special.any,
    },
    ["@string.special.symbol"] = {
      fg = palette.syntax.string.special.symbol.any,
    },
    ["@string.special.url"] = {
      fg = palette.syntax.string.special.url.any,
    },
    ["@string.special.path"] = {
      fg = palette.syntax.string.special.path.any,
    },

    ["@character"] = {
      fg = palette.syntax.character.any,
    },
    ["@character.special"] = {
      fg = palette.syntax.character.special.any,
    },

    ["@boolean"] = {
      fg = palette.syntax.boolean.any,
    },

    ["@number"] = {
      fg = palette.syntax.number.any,
    },
    ["@number.float"] = {
      fg = palette.syntax.number.float.any,
    },

    --[[
      TYPES
    --]]

    ["@type"] = {
      fg = palette.syntax.type.any,
    },
    ["@type.builtin"] = {
      fg = palette.syntax.type.builtin.any,
      bold = true
    },
    ["@type.definition"] = {
      fg = palette.syntax.type.definition.any,
    },

    ["@attribute"] = {
      fg = palette.syntax.attribute.any,
    },
    ["@annotation"] = {
      link = "@attribute",
    },
    ["@attribute.builtin"] = {
      fg = palette.syntax.attribute.builtin.any,
      bold = true
    },

    ["@property"] = {
      fg = palette.syntax.property.any,
    },

    --[[
      FUNCTIONS
    --]]

    ["@function"] = {
      fg = palette.syntax.func.any,
    },
    ["@function.builtin"] = {
      fg = palette.syntax.func.builtin.any,
      bold = true
    },
    ["@function.call"] = {
      fg = palette.syntax.func.call.any,
    },
    ["@function.macro"] = {
      fg = palette.syntax.func.macro.any,
    },

    ["@method"] = {
      fg = palette.syntax.func.method.any,
    },
    ["@method.call"] = {
      fg = palette.syntax.func.method.call.any,
    },

    ["@constructor"] = {
      fg = palette.syntax.constructor.any,
    },

    ["@operator"] = {
      fg = palette.syntax.operator.any,
    },

    --[[
      KEYWORDS
    --]]

    ["@keyword"] = {
      fg = palette.syntax.keyword.any,
    },
    ["@keyword.coroutine"] = {
      fg = palette.syntax.keyword.coroutine.any,
    },
    ["@keyword.function"] = {
      fg = palette.syntax.keyword.func.any,
    },
    ["@keyword.operator"] = {
      fg = palette.syntax.keyword.operator.any,
    },
    ["@keyword.import"] = {
      fg = palette.syntax.keyword.import.any,
    },
    ["@keyword.type"] = {
      fg = palette.syntax.keyword.type.any,
    },
    ["@keyword.modifier"] = {
      fg = palette.syntax.keyword.modifier.any,
    },
    ["@keyword.recursive"] = {
      fg = palette.syntax.keyword.recursive.any,
    },
    ["@keyword.result"] = {
      fg = palette.syntax.keyword.result.any,
    },
    ["@keyword.debug"] = {
      fg = palette.syntax.keyword.debug.any,
    },
    ["@keyword.exception"] = {
      fg = palette.syntax.keyword.exception.any,
    },

    ["@keyword.conditional"] = {
      fg = palette.syntax.keyword.conditional.any,
    },
    ["@keyword.conditional.ternary"] = {
      fg = palette.syntax.keyword.conditional.ternary.any,
    },

    ["@keyword.directive"] = {
      fg = palette.syntax.keyword.directive.any,
    },
    ["@keyword.directive.define"] = {
      fg = palette.syntax.keyword.directive.define.any,
    },

    --[[
      PUNCTUATION
    --]]

    ["@punctuation.delimiter"] = {
      fg = palette.syntax.punctuation.delimiter.any,
    },
    ["@punctuation.bracket"] = {
      fg = palette.syntax.punctuation.bracket.any,
    },
    ["@punctuation.special"] = {
      fg = palette.syntax.punctuation.special.any,
    },

    --[[
      COMMENTS
    --]]

    ["@comment"] = {
      fg = palette.syntax.comment.any,
    },
    ["@comment.documentation"] = {
      fg = palette.syntax.comment.documentation.any,
    },

    ["@comment.error"] = {
      fg = palette.syntax.comment.error.any,
    },
    ["@comment.warning"] = {
      fg = palette.syntax.comment.warning.any,
    },
    ["@comment.info"] = {
      fg = palette.syntax.comment.info.any,
    },
    ["@comment.hint"] = {
      fg = palette.syntax.comment.hint.any,
    },
    ["@comment.todo"] = {
      fg = palette.syntax.comment.todo.any,
    },
    ["@comment.note"] = {
      fg = palette.syntax.comment.note.any,
    },

    --[[
      MARKUP
    --]]

    ["@markup.strong"] = {
      bold = true
    },
    ["@markup.italic"] = {
      italic = true
    },
    ["@markup.strikethrough"] = {
      strikethrough = true
    },
    ["@markup.underline"] = {
      underline = true
    },

    ["@markup.heading"] = {
      fg = palette.syntax.markup.heading.any,
      bold = true
    },

    ["@markup.quote"] = {
      fg = palette.syntax.markup.quote.any,
    },
    ["@markup.math"] = {
      fg = palette.syntax.markup.math.any,
    },

    ["@markup.link"] = {
      fg = palette.syntax.markup.link.any,
    },
    ["@markup.link.label"] = {
      fg = palette.syntax.markup.link.label.any,
    },
    ["@markup.link.url"] = {
      fg = palette.syntax.markup.link.url.any,
    },

    ["@markup.raw"] = {
      fg = palette.syntax.markup.raw.any,
    },
    ["@markup.raw.block"] = {
      -- fg = palette.syntax.markup.raw.block.any,
    },

    ["@markup.list"] = {
      fg = palette.syntax.markup.list.any,
    },
    ["@markup.list.checked"] = {
      fg = palette.syntax.markup.list.checked.any,
    },
    ["@markup.list.unchecked"] = {
      fg = palette.syntax.markup.list.unchecked.any,
    },

    --[[
      DIFF
    --]]

    ["@diff.plus"] = {
      bg = palette.ui.area.b.success,
    },
    ["@diff.minus"] = {
      bg = palette.ui.area.b.error,
    },
    ["@diff.delta"] = {
      bg = palette.ui.area.b.warning,
    },

    --[[
      TAG
    --]]

    ["@tag"] = {
      fg = palette.syntax.tag.any,
    },
    ["@tag.builtin"] = {
      fg = palette.syntax.tag.builtin.any,
    },
    ["@tag.attribute"] = {
      fg = palette.syntax.tag.attribute.any,
    },
    ["@tag.delimiter"] = {
      fg = palette.syntax.tag.delimiter.any,
    },

    --[[
      SPECIAL
    --]]

    ["@error"] = {
      fg = palette.syntax.error.any,
    },

    ["@none"] = {},
    ["@conceal"] = { link = "Conceal" },

    -- ["@spell"] = {},
    -- ["@nospell"] = {},
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
