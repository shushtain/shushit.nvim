local palette = require "shushit.palette"
local theme = {}

theme.normal = {
  a = {
    fg = palette.ui.text.a.normal,
    bg = palette.ui.area.a.normal,
    gui = "bold"
  },
  b = {
    fg = palette.ui.text.c.normal,
    bg = palette.ui.area.b.normal
  },
  c = {
    fg = palette.ui.text.c.normal,
    bg = palette.ui.area.c.normal
  },
}

theme.insert = {
  a = {
    fg = palette.ui.text.a.success,
    bg = palette.ui.area.a.success,
    gui = "bold"
  },
}

theme.visual = {
  a = {
    fg = palette.ui.text.a.special,
    bg = palette.ui.area.a.special,
    gui = "bold"
  },
}

theme.replace = {
  a = {
    fg = palette.ui.text.a.error,
    bg = palette.ui.area.a.error,
    gui = "bold"
  },
}

theme.command = {
  a = {
    fg = palette.ui.text.a.warning,
    bg = palette.ui.area.a.warning,
    gui = "bold"
  },
}

theme.terminal = {
  a = {
    fg = palette.ui.text.a.binary,
    bg = palette.ui.area.a.binary,
    gui = "bold"
  },
}

theme.inactive = {
  a = {
    fg = palette.ui.text.disabled,
    bg = palette.ui.area.disabled,
    gui = "bold"
  },
  b = {
    fg = palette.ui.text.disabled,
    bg = palette.ui.area.disabled,
  },
  c = {
    fg = palette.ui.text.disabled,
    bg = palette.ui.area.disabled,
  },
}

return theme
