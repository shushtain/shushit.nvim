local M = {}

function M.setup(palette)
  local groups = {
    -- comments
    Comment = {
      fg = palette.syntax.comment.any
    },

    -- constants
    Constant = {
      fg = palette.syntax.constant.any
    },
    String = {
      fg = palette.syntax.string.any
    },
    Character = {
      fg = palette.syntax.character.any
    },
    Number = {
      fg = palette.syntax.number.any
    },
    Float = {
      fg = palette.syntax.number.float.any
    },
    Boolean = {
      fg = palette.syntax.boolean.any
    },

    -- identifiers
    Identifier = {
      fg = palette.syntax.variable.any
    },
    Function = {
      fg = palette.syntax.func.any
    },

    -- statements
    Statement = {
      fg = palette.syntax.keyword.any
    },
    Conditional = {
      fg = palette.syntax.keyword.conditional.any
    },
    Repeat = {
      fg = palette.syntax.keyword.recursive.any
    },
    Label = {
      fg = palette.syntax.keyword.conditional.any
    },
    Operator = {
      fg = palette.syntax.operator.any
    },
    Keyword = {
      fg = palette.syntax.keyword.any
    },
    Exception = {
      fg = palette.syntax.keyword.exception.any
    },

    -- preprocessor
    PreProc = {
      fg = palette.syntax.keyword.directive.any
    },
    Include = {
      fg = palette.syntax.keyword.import.any
    },
    Define = {
      fg = palette.syntax.keyword.directive.define.any
    },
    Macro = {
      fg = palette.syntax.func.macro.any
    },
    PreCondit = {
      fg = palette.syntax.keyword.directive.any
    },

    -- types
    Type = {
      fg = palette.syntax.type.builtin.any
    },
    StorageClass = {
      fg = palette.syntax.keyword.modifier.any
    },
    Structure = {
      fg = palette.syntax.type.any
    },
    Typedef = {
      fg = palette.syntax.type.definition.any
    },

    -- special
    Special = {
      fg = palette.syntax.punctuation.special.any
    },
    SpecialChar = {
      fg = palette.syntax.string.escape.any
    },
    Tag = {
      fg = palette.syntax.label.any
    },
    Delimiter = {
      fg = palette.syntax.punctuation.delimiter.any
    },
    SpecialComment = {
      fg = palette.syntax.comment.documentation.any
    },
    Debug = {
      fg = palette.syntax.keyword.debug.any
    },

    -- text-variants
    Underlined = {
      fg = palette.syntax.markup.underline.any,
      underline = true
    },
    Bold = {
      bold = true
    },
    Italic = {
      italic = true
    },

    -- ignored
    Ignore = {
      bg = palette.ui.cutout
    },

    -- errors
    Error = {
      fg = palette.syntax.error.any
    },

    -- todo
    Todo = {
      fg = palette.syntax.comment.todo.any
    },

    -- diagnostic: error
    DiagnosticError = {
      fg = palette.ui.text.c.error
    },
    DiagnosticFloatingError = {
      link = "DiagnosticError"
    },
    DiagnosticSignError = {
      link = "DiagnosticError"
    },
    DiagnosticUnderlineError = {
      sp = palette.ui.border.c.error,
      undercurl = true
    },
    DiagnosticVirtualTextError = {
      fg = palette.ui.text.c.error,
      bg = palette.ui.area.cutout
    },

    -- diagnostic: warning
    DiagnosticWarn = {
      fg = palette.ui.text.c.warning
    },
    DiagnosticFloatingWarn = {
      link = "DiagnosticWarn"
    },
    DiagnosticSignWarn = {
      link = "DiagnosticWarn"
    },
    DiagnosticUnderlineWarn = {
      sp = palette.ui.border.c.warning,
      undercurl = true
    },
    DiagnosticVirtualTextWarn = {
      fg = palette.ui.text.c.warning,
      bg = palette.ui.area.cutout
    },

    -- diagnostic: info
    DiagnosticInfo = {
      fg = palette.ui.text.c.info
    },
    DiagnosticFloatingInfo = {
      link = "DiagnosticInfo"
    },
    DiagnosticSignInfo = {
      link = "DiagnosticInfo"
    },
    DiagnosticUnderlineInfo = {
      sp = palette.ui.border.c.info,
      undercurl = true
    },
    DiagnosticVirtualTextInfo = {
      fg = palette.ui.text.c.info,
      bg = palette.ui.area.cutout
    },

    -- diagnostic: hint
    DiagnosticHint = {
      fg = palette.ui.text.disabled
    },
    DiagnosticFloatingHint = {
      link = "DiagnosticHint"
    },
    DiagnosticSignHint = {
      link = "DiagnosticHint"
    },
    DiagnosticUnderlineHint = {
      sp = palette.ui.border.disabled,
      undercurl = true
    },
    DiagnosticVirtualTextHint = {
      fg = palette.ui.text.disabled,
      bg = palette.ui.area.cutout
    },

    -- diagnostic: ok
    DiagnosticOk = {
      fg = palette.ui.text.c.success
    },
    DiagnosticFloatingOk = {
      link = "DiagnosticOk"
    },
    DiagnosticSignOk = {
      link = "DiagnosticOk"
    },
    DiagnosticUnderlineOk = {
      sp = palette.ui.border.c.success,
      undercurl = true
    },
    DiagnosticVirtualTextOk = {
      fg = palette.ui.text.c.success,
      bg = palette.ui.area.cutout
    },

    -- LSP
    LspCodeLens = {
      fg = palette.ui.text.disabled
    },
    LspCodeLensSeparator = {
      fg = palette.ui.border.disabled
    },
    LspInlayHint = {
      fg = palette.ui.text.disabled,
      bg = palette.ui.area.cutout
    },
    LspReferenceRead = {
      bg = palette.ui.area.b.normal
    },
    LspReferenceWrite = {
      bg = palette.ui.area.b.normal
    },
    LspReferenceText = {
      bg = palette.ui.area.b.normal
    },

    --[[
      COMMON PLUGIN GROUPS
    --]]

    -- quickfix
    qfLineNr = {
      link = "LineNr"
    },
    qfFileName = {
      link = "Directory"
    },

    -- debugging
    debugPC = {
      bg = palette.ui.area.c.normal
    },
    debugBreakpoint = {
      bg = palette.ui.area.c.error
    },
    debugBreakpointSign = {
      fg = palette.ui.border.b.error
    },

    -- occurrences
    illuminateWord = {
      bg = palette.ui.area.b.normal
    },
    illuminateCurWord = {
      bg = palette.ui.area.b.normal
    },


    -- diff headers
    diffFile = {
      fg = palette.ui.text.b.warning,
      bold = true
    },
    diffIndexLine = {
      fg = palette.ui.text.disabled
    },
    diffOldFile = {
      fg = palette.ui.text.c.error
    },
    diffNewFile = {
      fg = palette.ui.text.c.success
    },
    diffLine = {
      fg = palette.ui.text.disabled
    },

    -- diff content
    DiffAdd = {
      bg = palette.ui.area.c.success
    },
    DiffChange = {
      bg = palette.ui.area.c.warning
    },
    DiffDelete = {
      bg = palette.ui.area.c.error
    },
    DiffText = {
      bg = palette.ui.area.b.warning
    },

    -- diff content (fallback)
    diffAdded = {
      link = "DiffAdd"
    },
    diffChanged = {
      link = "DiffChange"
    },
    diffRemoved = {
      link = "DiffDelete"
    },

    -- nvim health
    healthError = {
      fg = palette.ui.text.c.error
    },
    healthSuccess = {
      fg = palette.ui.text.c.success
    },
    healthWarning = {
      fg = palette.ui.text.c.warning
    },

    -- glyphs
    GlyphPalette0 = {
      fg = palette.terminal.c0
    },
    GlyphPalette1 = {
      fg = palette.terminal.c1
    },
    GlyphPalette2 = {
      fg = palette.terminal.c2
    },
    GlyphPalette3 = {
      fg = palette.terminal.c3
    },
    GlyphPalette4 = {
      fg = palette.terminal.c4
    },
    GlyphPalette5 = {
      fg = palette.terminal.c5
    },
    GlyphPalette6 = {
      fg = palette.terminal.c6
    },
    GlyphPalette7 = {
      fg = palette.terminal.c7
    },
    GlyphPalette8 = {
      fg = palette.terminal.c8
    },
    GlyphPalette9 = {
      fg = palette.terminal.c9
    },
    GlyphPalette10 = {
      fg = palette.terminal.c10
    },
    GlyphPalette11 = {
      fg = palette.terminal.c11
    },
    GlyphPalette12 = {
      fg = palette.terminal.c12
    },
    GlyphPalette13 = {
      fg = palette.terminal.c13
    },
    GlyphPalette14 = {
      fg = palette.terminal.c14
    },
    GlyphPalette15 = {
      fg = palette.terminal.c15
    }
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
