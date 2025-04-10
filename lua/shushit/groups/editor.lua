local M = {}

function M.setup(palette)
  local groups = {
    -- max-width line
    ColorColumn = {
      bg = palette.ui.border.disabled
    },

    -- placeholder characters
    Conceal = {
      fg = palette.ui.text.c.normal,
      bg = palette.ui.cutout
    },

    -- cursors in different modes
    Cursor = {
      fg = palette.ui.bg,
      bg = palette.ui.text.b.normal
    },
    lCursor = {
      fg = palette.ui.bg,
      bg = palette.ui.text.b.normal
    },
    CursorIM = {
      fg = palette.ui.bg,
      bg = palette.ui.text.b.normal
    },

    -- lines that follow cursor position
    CursorColumn = {
      bg = palette.ui.border.disabled
    },
    CursorLine = {
      bg = palette.ui.border.disabled
    },

    -- directory names in listings
    Directory = {
      fg = palette.ui.text.c.info
    },

    -- filler lines (~) after the end of the buffer
    EndOfBuffer = {
      fg = palette.ui.border.disabled
    },

    -- error messages on the command line
    ErrorMsg = {
      fg = palette.ui.text.c.error
    },

    -- line used for closed folds
    Folded = {
      bg = palette.ui.area.c.normal
    },

    -- column for folding
    FoldColumn = {
      fg = palette.ui.border.c.normal
    },

    -- column for signs
    SignColumn = {
      fg = palette.ui.border.c.normal
    },
    SignColumnSB = {
      fg = palette.ui.border.c.normal,
      bg = palette.ui.area.c.normal
    },

    -- substitute replacement highlighting
    Substitute = {
      fg = palette.ui.text.c.error,
      bg = palette.ui.area.c.error
    },

    -- line numbers
    LineNr = {
      fg = palette.ui.text.disabled
    },
    CursorLineNr = {
      fg = palette.ui.text.c.normal
    },

    -- matching parentheses
    MatchParen = {
      bg = palette.ui.area.c.normal,
    },

    -- mode indicator (-- INSERT --, etc)
    ModeMsg = {
      fg = palette.ui.text.c.normal
    },

    -- for scrolled messages
    MsgSeparator = {},
    MoreMsg = {
      fg = palette.ui.text.c.info
    },

    -- hidden characters (tabs, spaces, etc)
    NonText = {
      fg = palette.ui.border.disabled
    },

    -- normal text
    Normal = {
      fg = palette.ui.text.b.normal,
      bg = palette.ui.bg
    },
    NormalSB = {
      fg = palette.ui.text.b.normal,
      bg = palette.ui.area.c.normal
    },

    -- floating windows
    NormalFloat = {
      fg = palette.ui.text.b.normal,
      bg = palette.ui.area.c.normal
    },
    FloatBorder = {
      bg = palette.ui.border.c.normal
    },
    FloatTitle = {
      fg = palette.ui.text.b.normal,
      bg = palette.ui.area.b.normal,
      style = { "bold" }
    },

    -- popup menu
    Pmenu = {
      fg = palette.ui.text.c.normal,
      bg = palette.ui.area.c.normal
    },
    PmenuSel = {
      fg = palette.ui.text.b.normal,
      bg = palette.ui.area.b.normal
    },
    PmenuSbar = {
      bg = palette.ui.border.c.normal
    },
    PmenuThumb = {
      bg = palette.ui.border.b.normal
    },

    -- question
    Question = {
      fg = palette.ui.text.c.info
    },

    -- quickfix
    QuickFixLine = {
      bg = palette.ui.area.c.normal,
      style = { "bold" }
    },

    -- search
    Search = {
      fg = palette.ui.text.b.normal,
      bg = palette.ui.area.c.normal
    },
    IncSearch = {
      fg = palette.ui.text.c.warning,
      bg = palette.ui.area.c.warning
    },
    CurSearch = {
      fg = palette.ui.text.b.warning,
      bg = palette.ui.area.b.warning
    },

    -- special keys
    SpecialKey = {
      link = "NonText"
    },

    -- spelling
    SpellBad = {
      sp = palette.ui.border.c.error,
      style = { "undercurl" }
    },
    SpellCap = {
      sp = palette.ui.border.c.warning,
      style = { "undercurl" }
    },
    SpellLocal = {
      sp = palette.ui.border.c.info,
      style = { "undercurl" }
    },
    SpellRare = {
      sp = palette.ui.border.c.success,
      style = { "undercurl" }
    },

    -- status line
    StatusLine = {
      fg = palette.ui.text.b.normal,
      bg = palette.ui.area.b.normal
    },
    StatusLineNC = {
      fg = palette.ui.text.c.normal,
      bg = palette.ui.area.c.normal
    },

    -- tab line
    TabLine = {
      fg = palette.ui.text.c.normal,
      bg = palette.ui.area.c.normal
    },
    TabLineFill = {
      bg = palette.ui.area.c.normal
    },
    TabLineSel = {
      fg = palette.ui.text.c.normal,
      bg = palette.ui.bg,
      style = { "bold" }
    },

    -- terminal cursor
    TermCursor = {
      fg = palette.ui.bg,
      bg = palette.ui.text.b.normal
    },
    TermCursorNC = {
      fg = palette.ui.bg,
      bg = palette.ui.text.disabled
    },

    -- titles for output from commands
    Title = {
      fg = palette.ui.text.b.info,
      style = { "bold" }
    },

    -- visual selection
    Visual = {
      bg = palette.ui.area.b.normal
    },
    VisualNOS = {
      bg = palette.ui.area.c.normal
    },

    -- warning messages
    WarningMsg = {
      fg = palette.ui.text.c.warning
    },

    -- whitespace
    Whitespace = {
      link = "NonText"
    },

    -- wildmenu
    WildMenu = {
      fg = palette.ui.text.b.normal,
      bg = palette.ui.area.b.normal,
    },

    -- winbar
    WinBar = {
      fg = palette.ui.text.c.normal,
    },
    WinBarNC = {
      fg = palette.ui.text.disabled,
    },

    -- window separator
    WinSeparator = {
      fg = palette.ui.border.c.normal
    },
    VertSplit = {
      link = "WinSeparator"
    },
  }

  for key, value in pairs(groups) do
    vim.api.nvim_set_hl(0, key, value)
  end
end

return M
